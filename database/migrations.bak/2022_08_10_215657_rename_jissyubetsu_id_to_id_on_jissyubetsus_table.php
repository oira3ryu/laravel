<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class RenameJissyubetsuIdToIdOnJissyubetsusTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('jissyubetsus', function (Blueprint $table) {
            $table->renameColumn('jissyubetsu_id', 'id'); //
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('jissyubetsus', function (Blueprint $table) {
            //
        });
    }
}
