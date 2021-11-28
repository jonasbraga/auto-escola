<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddPlacaColumn extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('carros', function (Blueprint $table) {
            $table->string('placa')->nullable();
        });
        Schema::table('motos', function (Blueprint $table) {
            $table->string('placa')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('carros', function (Blueprint $table) {
            $table->dropColumn('placa');
        });
        Schema::table('motos', function (Blueprint $table) {
            $table->dropColumn('placa');
        });
    }
}
