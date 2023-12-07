<?php

namespace Database\Seeders;

use App\Models\Chuong;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ChuongSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $arr = [1,2,3,4];
        foreach ($arr as $a){
            $c = new Chuong();
            $c->name = 'Chương '.$a.' '.fake()->city;
            $c->noidung = fake()->text;
            $c->save();
        }
    }
}
