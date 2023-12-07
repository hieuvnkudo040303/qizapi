<?php

namespace App\Http\Controllers;

use App\Http\Resources\BaiResource;
use App\Models\Bai;
use Illuminate\Http\Request;

class BaiController extends Controller
{
    public function index()
    {
        return BaiResource::collection(Bai::all());
    }
}
