<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;


class ServiceSeeders extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();

        DB::table('service')->insert([
            'nombre_servicio' => 'Aplicación digital',
            'precio_nivel_1' => 100,
            'precio_nivel_2' => 200,
            'precio_nivel_3' => 300,
            'precio_nivel_4'=> 400,
            'created_at'=> now(),
            'updated_at'=> now(),
        ]);
        DB::table('service')->insert([
            'nombre_servicio' => 'Revista digital',
            'precio_nivel_1' => 150,
            'precio_nivel_2' => 250,
            'precio_nivel_3' => 350,
            'precio_nivel_4'=> 450,
            'created_at'=> now(),
            'updated_at'=> now(),
        ]);
        DB::table('service')->insert([
            'nombre_servicio' => 'Juego digital',
            'precio_nivel_1' => 180,
            'precio_nivel_2' => 280,
            'precio_nivel_3' => 380,
            'precio_nivel_4'=> 480,
            'created_at'=> now(),
            'updated_at'=> now(),
        ]);
    }
}
