<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class RenameKoujyouwatashiIdToIdOnKoujyouwatashisTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('koujyouwatashis', function (Blueprint $table) {
            $table->renameColumn('koujyouwatashi_id', 'id'); //
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('koujyouwatashis', function (Blueprint $table) {
            //
        });
    }
}
