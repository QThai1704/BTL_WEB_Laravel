<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;

class FlightTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create();

        for ($i = 1; $i <= 10; $i++) {
            DB::table('flights')->insert([
                'plane_code' => DB::table('planes')->inRandomOrder()->first()->plane_code,
                'departure_airport' => $faker->city,
                'arrival_airport' => $faker->city,
                'departure_time' => $faker->dateTimeBetween('now', '+1 year')->format('Y-m-d'),
                'arrival_time' => $faker->dateTimeBetween('+1 year', '+2 years')->format('Y-m-d'),
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }
    }
}
