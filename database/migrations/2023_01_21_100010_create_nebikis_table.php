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
        Schema::create('nebikis', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('koujyou_id');
            $table->foreign('koujyou_id')
                ->references('id')
                ->on('koujyous');
            $table->unsignedBigInteger('nounyusaki_id');
            $table->foreign('nounyusaki_id')
                ->references('id')
                ->on('nounyusakis');
            $table->unsignedBigInteger('tanka_syubetsu_id');
            $table->foreign('tanka_syubetsu_id')
                ->references('id')
                ->on('tanka_syubetsus');
            $table->integer('nebiki');
            $table->date('kaishibi');
            $table->date('syuuryoubi')->nullable();
            $table->unsignedBigInteger('hyouji_id')->default(1);
            $table->foreign('hyouji_id')
                ->references('id')
                ->on('hyoujis');
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
        Schema::dropIfExists('nebikis');
    }
};
