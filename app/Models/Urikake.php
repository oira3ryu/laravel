<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Urikake extends Model
{
        use HasFactory;
        protected $fillable = [
                'hiduke',
                'koujyou_id',
                'nounyusaki_id',
                'genba_id',
                'syouhin_id',
                'suuryou',
                'hyouji_id',
                'bikou'
        ];
}
