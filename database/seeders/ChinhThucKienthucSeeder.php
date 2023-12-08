<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ChinhThucKienthucSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $bais = DB::table('bais')->get();
        $arr = ['Khái niệm', 'Tính chất', 'Dạng dễ', 'Dạng khó'];
        foreach ($bais as $bai){
            $id = $bai->id;
            for($i=0; $i<4; $i++){
                DB::table('kienthucs')->insert([
                    'name' => $arr[$i],
                    'noidung' => fake()->city(),
                    'bai_id' => $id,
                ]);
            }
        }
    }
}
