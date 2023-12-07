<?php

namespace App\Http\Controllers;

use App\Http\Resources\DeResource;
use App\Models\De;
use Illuminate\Http\Request;

class DeController extends Controller
{
    public function index(Request $request)
    {
        return De::where('user_id', $request->user()->id)->orderBy('created_at', 'desc')->get();
    }

    public function show(Request $request, $id)
    {
        $de = De::find($id);
        return new DeResource($de);
    }
}
