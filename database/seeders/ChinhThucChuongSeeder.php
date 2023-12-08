<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ChinhThucChuongSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $arr = ['Chương 1: Điện học', 'Chương 2: Điện từ học '];
        foreach ($arr as $a){
            DB::table('chuongs')->insert([
                'name' => $a,
                'noidung' => fake()->city(),
            ]);
        }
    }
}
