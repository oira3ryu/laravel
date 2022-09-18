<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSyukkakanriTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('syukkakanri', function (Blueprint $table) {
            $table->bigIncrements('id'); // 主キー
	    $table->date('hiduke'); // 日付
            $table->unsignedInteger('koujyou_id'); // 出荷工場
            $table->unsignedInteger('syukkasaki_id'); // 出荷先
            $table->unsignedInteger('genba_id'); // 現場
            $table->unsignedInteger('koujyouwatashi_id'); // 工場渡し種別
            $table->unsignedInteger('syubetsu_id'); // 製品種別
            $table->unsignedDecimal('suuryou', 4, 2); // 納入数量
            $table->unsignedDecimal('motikaerisuuryou', 4, 2); // 持帰り数量
            $table->unsignedInteger('kigou_id'); // 記号
            $table->unsignedInteger('yobikyoudo_id'); // 呼び強度
            $table->integer('cementryou'); // セメント量
            $table->unsignedInteger('kotsuzaisunpou_id'); // 骨材寸法
            $table->unsignedInteger('slump_id'); // スランプ
            $table->unsignedInteger('jissyubetsu_id'); // JIS有無
            $table->binary('daikoushiken')->nullable(); // 代行試験
            $table->string('bikou', 255)->nullable(); // 備考
            $table->softDeletes('delete_at'); // 削除フラグ
            $table->timestamp('created_at')->default(DB::raw('CURRENT_TIMESTAMP')); // 作成日時
            $table->timestamp('updated_at')->default(DB::raw('CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP')); // 更新日付
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('syukkakanri');
    }
}
