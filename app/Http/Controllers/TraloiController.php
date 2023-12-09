<?php

namespace App\Http\Controllers;

use App\Models\Luachon;
use App\Models\Traloi;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class TraloiController extends Controller
{
    public function index(Request $request)
    {
        $user = $request->user();
        return $this->getTraloi(null,$user->id)->get();
    }
    public function show(Request $request, $id)
    {
        $user = $request->user();
        return $this->getTraloi($id,null)->get();
    }
    private function getTraloi($de, $user)
    {
        $dk = [];
        if ($de){
            array_push($dk, ['des.id', '=', $de]);
        } else if ($user){
            array_push($dk, ['des.user_id', '=', $user]);
        }
        $result = DB::table('tralois')
            ->join('des', 'tralois.de_id', '=', 'des.id')
            ->join('cauhois', 'tralois.cauhoi_id', '=', 'cauhois.id')
            ->join('kienthucs', 'cauhois.kienthuc_id','=', 'kienthucs.id')
            ->where($dk)
            ->select('tralois.id','des.name as nameDe','tralois.status', 'cauhois.kienthuc_id', 'kienthucs.name')
            ->distinct();
        return $result;
    }
    public function update(Request $request)
    {
        $v = $request->validate([
            'id' => 'required',
            'luachonId' => 'required'
        ]);
        $id = $v['id'];
        $luachonId = $v['luachonId'];
        DB::table('tralois')->where('id', $id)->update([
            'luachon_id' => $luachonId,
            'status' => Luachon::find($luachonId)->status,
        ]);
        return response()->json([
            'message' => 'Thanh cong',
        ]);
    }

    public function reset(Request $request)
    {
        $v = $request->validate([
            'deId' => 'required',
        ]);
        $deId = $v['deId'];
        Traloi::where('de_id', $deId)->update([
            'status' => null,
            'luachon_id' => null,
        ]);
        return response()->json([
            'message' => 'Reset thanh cong',
        ]);
    }
}
