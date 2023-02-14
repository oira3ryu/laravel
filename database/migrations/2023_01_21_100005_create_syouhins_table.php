<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('syouhins', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('syouhin_syubetsu_id');
            $table->foreign('syouhin_syubetsu_id')
                    ->references('id')
                    ->on('syouhin_syubetsus');
            $table->text('meisyou');
            $table->text('kana');
            $table->boolean('hyouji')->default(1);
            $table->integer('narabikae')->nullable();
            $table->text('bikou')->nullable();
            $table->timestamp('updated_at')->useCurrent()->nullable();
            $table->timestamp('created_at')->useCurrent()->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('syouhins');
    }
};
