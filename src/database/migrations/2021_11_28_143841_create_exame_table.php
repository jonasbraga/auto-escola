<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateExameTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('exame', function (Blueprint $table) {
            $table->increments('id');
            $table->string('tipo');
            $table->date('data');
            $table->string('horario');
            $table->string('endereco');
            $table->unsignedInteger("alunos_id");
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
        Schema::dropIfExists('exame');
    }
}
