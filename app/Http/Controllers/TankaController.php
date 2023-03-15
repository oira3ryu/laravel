<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Tanka;
use App\Models\Tanka_syubetsu;
use App\Models\Syouhin;
use App\Models\Syouhin_syubetsu;
use App\Models\Hyouji;

class TankaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $hyouji = Hyouji::all();
        $syouhin = Syouhin::all();
        $tanka_syubetsu = Tanka_syubetsu::all();
        $tanka = Tanka::select(
            'tankas.id',
            'tankas.syouhin_id',
            'syouhins.meisyou',
            'tankas.tanka_syubetsu_id',
            'tanka_syubetsus.meisyou',
            'tankas.tanka',
            'tankas.kaishibi',
            'tankas.syuuryoubi',
            'tankas.hyouji_id',
            'hyoujis.meisyou',
            'tankas.bikou'
        )
            ->join('syouhins', 'syouhins.id', '=', 'tankas.syouhin_id')
            ->join('tanka_syubetsus', 'tanka_syubetsus.id', '=', 'tankas.tanka_syubetsu_id')
            ->join('hyoujis', 'hyoujis.id', '=', 'tankas.hyouji_id')
            ->orderByRaw('kaishibi desc, id desc')
            ->get();
        return view('tanka-index', compact('tanka', 'hyouji', 'syouhin', 'tanka_syubetsu'));
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $syouhin = Syouhin::all();
        $syouhin_syubetsu = Syouhin_syubetsu::all();
        $tanka_syubetsu = Tanka_syubetsu::all();
        $hyouji = Hyouji::all();
        return view('tanka-create', compact('hyouji', 'syouhin', 'syouhin_syubetsu', 'tanka_syubetsu'));
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $storeData = $request->validate([
            'syouhin_id' => 'required|numeric',
            'tanka_syubetsu_id' => 'required|numeric',
            'tanka' => 'required|numeric',
            'kaishibi' => 'required|date',
            'syuuryoubi' => 'date',
            'hyouji_id' => 'required|numeric',
            'bikou' => 'max:255',
        ]);
        $tanka = Tanka::create($storeData);
        return redirect('/tankas')->with('completed', 'Tanka has been saved!');
    }
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }
    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $syouhin = Syouhin::all();
        $syouhin_syubetsu = Syouhin_syubetsu::all();
        $tanka_syubetsu = Tanka_syubetsu::all();
        $hyouji = Hyouji::all();
        $tanka = Tanka::findOrFail($id);
        return view('tanka-edit', compact('tanka', 'hyouji', 'syouhin', 'syouhin_syubetsu', 'tanka_syubetsu'));
    }
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $updateData = $request->validate([
            'syouhin_id' => 'required|numeric',
            'tanka_syubetsu_id' => 'required|numeric',
            'tanka' => 'required|numeric',
            'kaishibi' => 'required|date',
            'syuuryoubi' => 'date',
            'hyouji_id' => 'required|numeric',
            'bikou' => 'max:255',
        ]);
        Tanka::whereId($id)->update($updateData);
        return redirect('/tankas')->with('completed', 'Tanka has been updated');
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $tanka = Tanka::findOrFail($id);
        $tanka->delete();
        return redirect('/tankas')->with('completed', 'Tanka has been deleted');
    }
}
