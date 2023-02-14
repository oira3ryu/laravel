<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Syouhin extends Model
{
    use HasFactory;
	        protected $fillable = [
                'syouhin_syubetsu_id',
                'meisyou',
                'kana',
                'hyouji',
                'narabikae',
                'bikou'
        ];

}
