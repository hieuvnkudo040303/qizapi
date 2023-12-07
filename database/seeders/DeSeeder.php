<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $user = User::find(1);
        $arr = [5,10,15,20,40];
        foreach ($arr as $a){
            DB::table('des')->insert([
                'user_id' => $user->id,
                'name' => 'De '.$a.' cau',
                'socau' => $a,
                'diem' => 10,
            ]);
        }
    }
}
