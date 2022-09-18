<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Syukkakanri extends Model
{
    use HasFactory;
    protected $fillable = [
	'hiduke',
	'koujyou_id',
	'syukkasaki_id',
	'genba_id',
	'koujyouwatashi_id',
	'seihinsyubetsu_id',
	'suuryou',
	'motikaerisuuryou',
	'pumpkaisuu',
	'pumpsuuryou',
	'kigou_id',
	'yobikyoudo_id',
	'cementryou',
	'kotsuzaisunpou_id',
	'slump_id',
	'jissyubetsu_id',
	'daikoushiken',
	'bikou',
	'delete_at',
	'created_at',
	'updated_at',
	];
}
