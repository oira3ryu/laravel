<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Tanka extends Model
{
        use HasFactory;
        protected $fillable = [
                'syouhin_id',
                'tankasyubetsu_id',
                'tanka',
                'kaishibi',
                'syuuryoubi',
                'hyouji_id',
                'bikou'
        ];
}
