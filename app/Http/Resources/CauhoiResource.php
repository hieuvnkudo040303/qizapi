<?php

namespace App\Http\Resources;

use App\Models\Luachon;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Support\Facades\DB;

class CauhoiResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        $r = null;
        $image = $this->image;
        if ($image){
            $r = url('public/image/'.$image);
        }
        return [
            'id' => $this->id,
            'noidung' => $this->noidung,
            'image' => $r,
            'luachon' => LuachonResource::collection(Luachon::where('cauhoi_id', $this->id)->get()),
        ];
    }
}
