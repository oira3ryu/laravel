<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class RenameKotsuzaisunpouIdToIdOnKotsuzaisunpousTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('kotsuzaisunpous', function (Blueprint $table) {
            $table->renameColumn('kotsuzaisunpou_id', 'id'); //
        });
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
