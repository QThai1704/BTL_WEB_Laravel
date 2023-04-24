<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;
class PlaneTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create();

        // Tạo 10 bản ghi cho bảng planes
        for ($i = 0; $i < 10; $i++) {
            DB::table('planes')->insert([
                'plane_code' => $faker->unique()->bothify('???-###'),
                'registration_number' => $faker->bothify('###-????'),
                //bothify là tạo ký tự ngẫu nhiên với ? là ký tự chữ in hoa, # là ký tự số
                'passenger' => $faker->numberBetween(100, 500),
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }
    }
}
