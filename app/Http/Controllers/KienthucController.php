<?php

namespace App\Http\Controllers;

use App\Http\Resources\KienthucResource;
use App\Models\Kienthuc;
use Illuminate\Http\Request;

class KienthucController extends Controller
{
    public function index()
    {
        return KienthucResource::collection(Kienthuc::all());
    }
}
