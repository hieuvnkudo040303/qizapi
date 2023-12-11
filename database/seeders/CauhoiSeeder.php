<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CauhoiSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $kts = DB::table('kienthucs')->get();
        $dem = 1;
        foreach ($kts as $kt){
            $id = $kt->id;
            if ($id < 7){
                continue;
            }
            for($i=0; $i<5; $i++){
                DB::table('cauhois')->insert([
                    'name' => 'Cau '.$dem,
                    'noidung' => fake()->text(),
                    'mucdo' => 1,
                    'kienthuc_id' => $id,
                ]);
                $dem++;
            }
            for($i=0; $i<3; $i++){
                DB::table('cauhois')->insert([
                    'name' => 'Cau '.$dem,
                    'noidung' => fake()->text(),
                    'mucdo' => 2,
                    'kienthuc_id' => $id,
                ]);
                $dem++;
            }
            for($i=0; $i<2; $i++){
                DB::table('cauhois')->insert([
                    'name' => 'Cau '.$dem,
                    'noidung' => fake()->text(),
                    'mucdo' => 3,
                    'kienthuc_id' => $id,
                ]);
                $dem++;
            }
        }
    }
}
