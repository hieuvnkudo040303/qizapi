<?php

namespace App\Http\Controllers;

use App\Http\Resources\DeResource;
use App\Models\De;
use Illuminate\Http\Request;
use PharIo\Version\Exception;

class DeController extends Controller
{
    public function index(Request $request)
    {
        return De::where('user_id', $request->user()->id)->orderBy('created_at', 'desc')->get();
    }

    public function show(Request $request, $id)
    {
        try {
            $de = De::find($id);
            return new DeResource($de);
        } catch (Exception $err){
            return response()->json([
                'message' => 'Id khong ton tai',
            ], 500);
    }
    }
}
