<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class TableService extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    
      public function up()
      {
          Schema::create('service', function (Blueprint $table) {
              $table->bigIncrements('service_id');
              $table->string('nombre_servicio');
              $table->float('precio_nivel_1');
              $table->float('precio_nivel_2');
              $table->float('precio_nivel_3');
              $table->float('precio_nivel_4');
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
          Schema::dropIfExists('service');
      }
}
