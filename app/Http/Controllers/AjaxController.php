<?php

namespace App\Http\Controllers;

use App\Models\Genba;
use Illuminate\Http\Request;

class AjaxController extends Controller
{
    public function ajax(Request $request)
    {
        header('Content-type:application/json;charset=utf-8');
        $syukkasaki = $request->value;
        $genbas = Genba::where('syukkasaki_id', $syukkasaki)->pluck('meisyou');
        return $genbas;
    } //
}
