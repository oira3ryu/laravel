<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Syouhin_syubetsu extends Model
{
    use HasFactory;
    	        protected $fillable = [
                'meisyou',
                'kana',
                'hyouji',
                'bikou'
        ];
}
