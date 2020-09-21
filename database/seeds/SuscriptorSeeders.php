<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;


class SuscriptorSeeders extends Seeder

{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();

        for($i=0;$i<10;$i++)
        {
            DB::table('suscriptor')->insert([
                'nombre' => $faker->firstName,
                'apellido' => $faker->lastName,
                'password' => Hash::make('password'),
                'email' => $faker->email,
                'latitud' => $faker->latitude($min = -37, $max = -23),
                'longitud' => $faker->longitude($min = -69, $max = -56),
                'created_at'=> now(),
                'updated_at'=> now(),
            ]);
        }
    }
}
