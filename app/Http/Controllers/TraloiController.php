<?php

namespace App\Http\Controllers;

use App\Models\Luachon;
use App\Models\Traloi;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class TraloiController extends Controller
{
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
