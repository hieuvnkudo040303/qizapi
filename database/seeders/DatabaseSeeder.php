<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
//        $this->call([
//            UserSeeder::class,
//            ChuongSeeder::class,
//            BaiSeeder::class,
//            KienthucSeeder::class,
//            CauhoiSeeder::class,
//            LuachonSeeder::class,
//            DeSeeder::class,
//            TraloiSeeder::class,
//        ]);
        $this->call([
            UserSeeder::class,
            ChinhThucChuongSeeder::class,
            ChinhThucBaiSeeder::class,
            ChinhThucKienthucSeeder::class,
        ]);
    }
}
