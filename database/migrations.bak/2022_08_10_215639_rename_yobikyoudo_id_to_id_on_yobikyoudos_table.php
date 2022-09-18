<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class RenameYobikyoudoIdToIdOnYobikyoudosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('yobikyoudos', function (Blueprint $table) {
            $table->renameColumn('yobikyoudo_id', 'id'); //
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('yobikyoudos', function (Blueprint $table) {
            //
        });
    }
}
