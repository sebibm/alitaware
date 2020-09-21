<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class ServicesSuscriptors extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('service_has_suscriptor', function (Blueprint $table) {
            $table->bigIncrements('service_has_suscriptor_id');
            $table->unsignedBigInteger('service_idservice');
            $table->foreign('service_idservice')->references('service_id')->on('service');

            $table->unsignedBigInteger('suscriptor_idSuscriptor');
            $table->foreign('suscriptor_idSuscriptor')->references('suscriptor_id')->on('suscriptor');

            $table->unsignedBigInteger('pagos_idpagos');
            $table->foreign('pagos_idpagos')->references('pago_id')->on('pago');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('service_has_suscriptor');
    }
}
