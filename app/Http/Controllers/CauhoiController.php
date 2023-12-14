<?php

namespace App\Http\Controllers;

use App\Http\Resources\DeResource;
use App\Models\Bai;
use App\Models\Cauhoi;
use App\Models\Chuong;
use App\Models\De;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class CauhoiController extends Controller
{
    public function taode(Request $request)
    {
        $validator = $request->validate([
            'kts' => 'required',
            'mucdo' => 'required',
            'socau' => 'required',
            'namede' => 'required'
        ]);
        $kts = $validator['kts'];
        $mucdo = $validator['mucdo'];
        $socau = $validator['socau'];
        $namede = $validator['namede'];

        $r = null;
        foreach ($kts as $kt){
            $tmp = $this->getCH($kt, $mucdo);
            if ($r == null){
                $r = $tmp;
            } else {
                $r = $r->union($tmp);
            }
        }
        $user = $request->user();
        $r = $r->inRandomOrder();
        $de = new De();
        $de->name = $namede;
        $de->socau = $socau;
        $de->diem = 0;
        $de->user_id = $user->id;
        $de->save();
        $idDe = $de->id;

        $r = $r->limit($socau)->get();
        foreach ($r as $cauhoi){
            DB::table('tralois')->insert([
                'de_id' => $idDe,
                'cauhoi_id' => $cauhoi->id,
                'luachon_id' => null,
                'status' => null,
            ]);
        }

        return new DeResource($de);
    }
    private function getCH($kienthuc, $mucdo){
        $dk = [];
        if ($kienthuc){
            array_push($dk, ['cauhois.kienthuc_id', '=', $kienthuc]);
        }
        if ($mucdo){
            array_push($dk, ['cauhois.mucdo', '=', $mucdo]);
        }
        $result = DB::table('cauhois')
            ->where($dk)
            ->select('cauhois.*');
        return $result;
    }
    public  function createCauhoi(Request $request)
    {
        $v = $request->validate([
            'name' => 'required',
            'noidung' => 'required',
            'mucdo' => 'required',
            'kienthucId' => 'required',
            'cauA' => 'required',
            'cauB' => 'required',
            'cauC' => 'required',
            'cauD' => 'required',
            'dung' => 'required',

        ]);
        $cauhoi = new Cauhoi();
        $cauhoi->name = $v['name'];
        $cauhoi->noidung = $v['noidung'];
        $cauhoi->mucdo = $v['mucdo'];
        $cauhoi->kienthuc_id = $v['kienthucId'];
        if ($request->file('image')){
            $file= $request->file('image');
            $filename= date('YmdHi').$file->getClientOriginalName();
            $file-> move(public_path('public/image'), $filename);
            $cauhoi->image= $filename;
        }
        $cauhoi->save();
        $id = $cauhoi->id;
        $arr = [$v['cauA'], $v['cauB'], $v['cauC'], $v['cauD']];
        $dung = $v['dung'];
        for($i=0; $i<4; $i++){
            if ($dung == $i){
                DB::table('luachons')->insert([
                    'noidung' => $arr[$i],
                    'status' => true,
                    'cauhoi_id' => $id
                ]);
            } else {
                DB::table('luachons')->insert([
                    'noidung' => $arr[$i],
                    'status' => false,
                    'cauhoi_id' => $id
                ]);
            }
        }
        return response()->json([
            'url' => url('public/Image/'.$cauhoi->image)
        ]);
    }
}
