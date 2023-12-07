<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class KienthucSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $bais = DB::table('bais')->get();
        foreach ($bais as $b){
            $id = $b->id;
            $arr = ['Khái niệm', 'Định lí', 'Tính chất', 'Bài tập dễ', 'Bài tập khó'];
            for ($i=0; $i<count($arr); $i++){
                DB::table('kienthucs')->insert([
                    'name' => $arr[$i].' '.$id.'.'.($i),
                    'noidung' => fake()->text,
                    'bai_id' => $id
                ]);
            }
        }
    }
}
