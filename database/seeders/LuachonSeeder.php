<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class LuachonSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $cauhois = DB::table('cauhois')->get();
        foreach ($cauhois as $cauhoi){
            $id = $cauhoi->id;
            $mayman = rand(1,4);
            for($i=1; $i<=4; $i++){
                if ($i == $mayman){
                    DB::table('luachons')->insert([
                        'noidung' => fake()->text(),
                        'status' => true,
                        'cauhoi_id' => $id
                    ]);
                } else {
                    DB::table('luachons')->insert([
                        'noidung' => fake()->text(),
                        'status' => false,
                        'cauhoi_id' => $id
                    ]);
                }
            }
        }
    }
}
