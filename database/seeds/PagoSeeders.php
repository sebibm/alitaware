<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;


class PagoSeeders extends Seeder
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
            DB::table('pago')->insert([
                'monto' => $faker->numberBetween($min = 1000, $max = 4000),
                'fecha_pago' => $faker->date,
                'fecha_vencimiento' => $faker->date,
                'created_at'=> now(),
                'updated_at'=> now(),
            ]);
        }
    }
}
