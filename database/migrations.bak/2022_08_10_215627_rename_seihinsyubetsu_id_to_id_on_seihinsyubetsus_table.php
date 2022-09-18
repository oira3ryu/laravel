<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class RenameSeihinsyubetsuIdToIdOnSeihinsyubetsusTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('seihinsyubetsus', function (Blueprint $table) {
            $table->renameColumn('seihinsyubetsu_id', 'id'); //
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('seihinsyubetsus', function (Blueprint $table) {
            //
        });
    }
}
