<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Hyouji extends Model
{
    use HasFactory;
	        protected $fillable = [
                'meisyou',
                'kana',
                'hyouji',
                'narabikae',
                'bikou'
        ];
}
