<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class BaiSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $chuongs = DB::table('chuongs')->get();
        $dem = 1;
        foreach ($chuongs as $c){
            $id = $c->id;
            for ($i=0; $i<10; $i++){
                DB::table('bais')->insert([
                    'name' => 'Bai '.$dem.' '.fake()->city,
                    'noidung' => fake()->text,
                    'chuong_id' => $id
                ]);
                $dem++;
            }
        }
    }
}
