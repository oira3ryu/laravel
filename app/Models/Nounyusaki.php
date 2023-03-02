<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Nounyusaki extends Model
{
    use HasFactory;
	        protected $fillable = [
                'koujyou_id',
                'meisyou',
                'kana',
                'hyouji',
                'bikou'
        ];
}
