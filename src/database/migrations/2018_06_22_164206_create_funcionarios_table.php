<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateFuncionariosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('funcionarios', function (Blueprint $table) {
            $table->increments('id');
			$table->string('nome');
			$table->date('dataNascimento');
			$table->string('sexo');
			$table->string('rua');
			$table->string('numero');
			$table->string('complemento');
			$table->string('bairro');
			$table->string('cidade');
			$table->string('estado');
			$table->string('cep');
			$table->string('rg');
			$table->string('cpf');
			$table->string('telefoneContato');
			$table->string('perfil');
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
        Schema::dropIfExists('funcionarios');
    }
}
