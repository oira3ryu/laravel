<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Nebiki extends Model
{
    use HasFactory;
        protected $fillable = [
            'nounyusaki_id', 
            'nebiki', 
            'kaishibi', 
            'syuuryoubi', 
            'hyouji', 
            'narabikae', 
            'bikou'
        ];
}
