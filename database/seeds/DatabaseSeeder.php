<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call(SuscriptorSeeders::class);
        $this->call(SuscriptorTeamSeeders::class);
        $this->call(ServiceSeeders::class);
        $this->call(PagoSeeders::class);
        $this->call(ServiceSuscriptorsSeeders::class);



    }
}
