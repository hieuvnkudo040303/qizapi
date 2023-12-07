<?php

namespace App\Http\Controllers;

use App\Http\Resources\ChuongResource;
use App\Models\Chuong;
use Illuminate\Http\Request;

class ChuongController extends Controller
{
    public function index()
    {
        return ChuongResource::collection(Chuong::all());
    }
}
