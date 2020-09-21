<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;


class ServiceSuscriptorsSeeders extends Seeder
{
    
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();


        for($i=0;$i<30;$i++)
        {
            DB::table('service_has_suscriptor')->insert([
                'service_idservice' => $faker->numberBetween($min = 1, $max = 3),
                'suscriptor_idSuscriptor' => $faker->numberBetween($min = 1, $max = 9),
                'pagos_idpagos' => $faker->numberBetween($min = 1, $max = 29),
                'created_at'=> now(),
                'updated_at'=> now(),
            ]);
        }


    }
}
