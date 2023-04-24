<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class PassengerTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('passengers')->insert([
            ['name' => 'John Doe', 'email' => 'johndoe@example.com'],
            ['name' => 'Jane Doe', 'email' => 'janedoe@example.com'],
            ['name' => 'Bob Smith', 'email' => 'bobsmith@example.com'],
        ]);
    }
}
