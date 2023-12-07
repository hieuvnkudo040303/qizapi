<?php

namespace App\Http\Resources;

use App\Models\Cauhoi;
use App\Models\Luachon;
use App\Models\Traloi;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class DeResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        $tralois = Traloi::where('de_id', $this->id)->get();
        $arrCauhoi = [];
        $arrTraloi = [];
        foreach ($tralois as $t){
            $cauhoiId = $t->cauhoi_id;
            array_push($arrCauhoi, Cauhoi::find($cauhoiId));
            array_push($arrTraloi, [
                'luachonId' => $t->luachon_id,
                'id' => $t->id,
                'status' => $t->status
            ]);
        }
        return [
            'id' => $this->id,
            'name' => $this->name,
            'socau' => $this->socau,
            'diem' => $this->diem,
            'traloi' => $arrTraloi,
            'cauhoi' => CauhoiResource::collection($arrCauhoi)
        ];
    }
}
