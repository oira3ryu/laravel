<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSyukkakanrisTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('syukkakanris', function (Blueprint $table) {
            $table->bigIncrements('id'); // 主キー
	    $table->date('hiduke'); // 日付
            $table->unsignedBigInteger('koujyou_id'); // 出荷工場
            $table->unsignedBigInteger('syukkasaki_id'); // 出荷先
            $table->unsignedBigInteger('genba_id'); // 現場
            $table->unsignedBigInteger('koujyouwatashi_id'); // 工場渡し種別
            $table->unsignedBigInteger('syubetsu_id'); // 製品種別
            $table->unsignedDecimal('suuryou', 4, 2); // 納入数量
            $table->unsignedDecimal('motikaerisuuryou', 4, 2); // 持帰り数量
            $table->unsignedBigInteger('kigou_id'); // 記号
            $table->unsignedBigInteger('yobikyoudo_id'); // 呼び強度
            $table->integer('cementryou'); // セメント量
            $table->unsignedBigInteger('kotsuzaisunpou_id'); // 骨材寸法
            $table->unsignedBigInteger('slump_id'); // スランプ
            $table->unsignedBigInteger('jissyubetsu_id'); // JIS有無
            $table->binary('daikoushiken')->nullable(); // 代行試験
            $table->string('bikou', 255)->nullable(); // 備考
            $table->softDeletes('delete_at'); // 削除フラグ
            $table->timestamp('created_at')->default(DB::raw('CURRENT_TIMESTAMP')); // 作成日時
            $table->timestamp('updated_at')->default(DB::raw('CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP')); // 更新日付
            
            // 外部キー制約 
            $table->foreign('koujyou_id')->references('id')->on('koujyous')->onDelete('cascade');
            $table->foreign('syukkasaki_id')->references('id')->on('syukkasakis')->onDelete('cascade');
            $table->foreign('genba_id')->references('id')->on('genbas')->onDelete('cascade');
            $table->foreign('koujyouwatashi_id')->references('id')->on('koujyouwatashis')->onDelete('cascade');
            $table->foreign('syubetsu_id')->references('id')->on('syubetsus')->onDelete('cascade');
            $table->foreign('kigou_id')->references('id')->on('kigous')->onDelete('cascade');
            $table->foreign('yobikyoudo_id')->references('id')->on('yobikyoudos')->onDelete('cascade');
            $table->foreign('kotsuzaisunpou_id')->references('id')->on('kotsuzaisunpous')->onDelete('cascade');
            $table->foreign('slump_id')->references('id')->on('slumps')->onDelete('cascade');
            $table->foreign('jissyubetsu_id')->references('id')->on('jissyubetsus')->onDelete('cascade');            
});
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('syukkakanris');
    }
}
