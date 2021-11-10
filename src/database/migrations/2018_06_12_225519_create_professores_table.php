<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProfessoresTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('professores', function (Blueprint $table) {
            $table->increments('id');
			$table->string('nome');
			$table->date('dataNascimento');
			$table->char('sexo');
			$table->string('rua');
			$table->string('numero');
			$table->string('complemento')->nullable($value = true);
			$table->string('bairro');
			$table->string('cidade');
			$table->string('estado');
			$table->string('cep');
			$table->string('rg', 30)->unique();
			$table->string('cpf', 30)->unique();
			$table->string('telefoneContato', 30)->unique();
			$table->text('disciplina');
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
        Schema::dropIfExists('professores');
    }
}
