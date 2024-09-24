<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run()
    {


        $this->call(categoryeeder::class);
        $this->call(Subcategoryeeder::class);
        $this->call(AuthorSeeder::class);
        $this->call(PublisherSeeder::class);
        $this->call(BookSeeder::class);
        $this->call(UserSeeder::class);


        // Llama al seeder de Products
        //$this->call(ProductSeeder::class);

        // Agrega más llamadas a seeders según sea necesario
    }
}
