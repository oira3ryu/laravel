<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateGenbasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('genbas', function (Blueprint $table) {
            $table->bigIncrements('id'); // 主キー
            $table->unsignedBigInteger('koujyou_id'); // 出荷工場ID
            $table->unsignedBigInteger('syukkasaki_id'); // 出荷先ID
            $table->string('koujibangou', 10); // 工事番号
            $table->string('meisyou', 255); // 名称
            $table->string('meisyoukana', 255)->nullable(); // 名称カナ
            $table->string('bikou', 255)->nullable(); // 備考
            $table->softDeletes('delete_at'); // 削除フラグ
            $table->timestamp('created_at')->default(DB::raw('CURRENT_TIMESTAMP'
)); // 作成日時
            $table->timestamp('updated_at')->default(DB::raw('CURRENT_TIMESTAMP
on update CURRENT_TIMESTAMP')); // 更新日付
            
            // 外部キー制約
            $table->foreign('koujyou_id')->references('id')->on('koujyous')->onDelete('cascade');
            $table->foreign('syukkasaki_id')->references('id')->on('syukkasakis')->onDelete('cascade');
          });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('genbas');
    }
}
