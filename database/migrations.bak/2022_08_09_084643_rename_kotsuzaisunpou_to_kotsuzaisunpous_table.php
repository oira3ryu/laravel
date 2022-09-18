<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class RenameKotsuzaisunpouToKotsuzaisunpousTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
       Schema::rename('kotsuzaisunpou', 'kotsuzaisunpous');
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('kotsuzaisunpous', function (Blueprint $table) {
            //
        });
    }
}
