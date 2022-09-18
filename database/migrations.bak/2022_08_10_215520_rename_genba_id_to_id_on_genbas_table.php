<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class RenameGenbaIdToIdOnGenbasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('genbas', function (Blueprint $table) {
            $table->renameColumn('genba_id', 'id'); //
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('genbas', function (Blueprint $table) {
            //
        });
    }
}
