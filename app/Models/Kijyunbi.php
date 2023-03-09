<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Kijyunbi extends Model
{
        use HasFactory;
        protected $fillable = [
                'hiduke',
                'hyouji_id',
                'bikou'
        ];
}
