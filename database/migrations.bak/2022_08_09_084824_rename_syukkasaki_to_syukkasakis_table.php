<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class RenameSyukkasakiToSyukkasakisTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
       Schema::rename('syukkasaki', 'syukkasakis');
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('syukkasakis', function (Blueprint $table) {
            //
        });
    }
}
