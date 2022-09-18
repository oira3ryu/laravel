<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class RenameKoujyouIdToIdOnKoujyousTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('koujyous', function (Blueprint $table) {
            $table->renameColumn('koujyou_id', 'id'); //
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('koujyous', function (Blueprint $table) {
            //
        });
    }
}
