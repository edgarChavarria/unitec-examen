<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {

            $table->increments('id');
            $table->string('nombre',50);
            $table->string('apellido_paterno',50);
            $table->string('apellido_materno',50);
            $table->integer('edad');
            $table->string('email',50)->unique();
            $table->string('password',100);
            $table->unsignedInteger('genero_id');
            $table->rememberToken();
            $table->foreign('genero_id')->references('id')->on('genero');
            $table->unsignedInteger('estado_civil_id');
            $table->foreign('estado_civil_id')->references('id')->on('estado_civil');
            $table->unsignedInteger('educacion_id');
            $table->foreign('educacion_id')->references('id')->on('educacion');
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
        Schema::dropIfExists('users');
    }
}
