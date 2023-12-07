<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class TraloiSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $des = DB::table('des')->get();
        foreach ($des as $de){
            $id = $de->id;
            $socau = $de->socau;
            for ($i=0; $i<$socau; $i++){
                $cauhoi = rand(1,2000);
                $luachon = DB::table('luachons')
                    ->where('cauhoi_id', $cauhoi)
                    ->where('status', 1)
                    ->get()->value('id');
                DB::table('tralois')->insert([
                    'de_id' => $id,
                    'cauhoi_id' => $cauhoi,
                    'luachon_id' => $luachon,
                    'status' => true,
                ]);
            }
        }
    }
}
