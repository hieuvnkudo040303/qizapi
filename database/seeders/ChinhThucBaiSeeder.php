<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ChinhThucBaiSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $chuongs = DB::table('chuongs')->get();
        foreach ($chuongs as $chuong){
            $id = $chuong->id;
            if ($id == 1){
                for($i=1; $i<=19; $i++){
                    DB::table('bais')->insert([
                        'name' => 'Bài '.$i,
                        'noidung' => fake()->city(),
                        'chuong_id' => $id,
                    ]);
                }
            } else if ($id == 2){
                for($i=21; $i<=32; $i++){
                    DB::table('bais')->insert([
                        'name' => 'Bài '.$i,
                        'noidung' => fake()->city(),
                        'chuong_id' => $id,
                    ]);
                }
            }
        }
    }
}
