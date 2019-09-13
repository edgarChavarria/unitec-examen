<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEducacionTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('educacion', function (Blueprint $table) {
            $table->increments('id');
            $table->string('nombre',80);
            $table->unsignedInteger('nivel_interes_id');
            $table->foreign('nivel_interes_id')->references('id')->on('nivel_interes');
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
        Schema::dropIfExists('educacion');
    }
}
