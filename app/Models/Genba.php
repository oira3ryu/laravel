<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Genba extends Model
{
    use HasFactory;
	        protected $fillable = [
                'nounyusaki_id',
                'meisyou',
                'kana',
                'hyouji',
                'narabikae',
                'bikou'
        ];
}
