<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Syouhin_syubetsu;
use App\Models\Hyouji;

class Syouhin_syubetsuController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $hyouji = Hyouji::all();
        $syouhin_syubetsu = Syouhin_syubetsu::select(
            'syouhin_syubetsus.id',
            'syouhin_syubetsus.meisyou',
            'syouhin_syubetsus.kana',
            'syouhin_syubetsus.hyouji_id',
            'hyoujis.meisyou',
            'syouhin_syubetsus.bikou'
        )
            ->join('hyoujis', 'hyoujis.id', '=', 'syouhin_syubetsus.hyouji_id')
            ->orderByRaw('id desc')
            ->get();
        return view('syouhin_syubetsu-index', compact('syouhin_syubetsu', 'hyouji'));
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $hyouji = Hyouji::all();
        return view('syouhin_syubetsu-create', compact('hyouji'));
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
            'meisyou' => 'required|max:255',
            'kana' => 'required|max:255',
            'hyouji_id' => 'required|numeric',
            'bikou' => 'max:255',
        ]);
        $syouhin_syubetsu = Syouhin_syubetsu::create($storeData);
        return redirect('/syouhin_syubetsus')->with('completed', 'Syouhin_syubetsu has been saved!');
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
        $hyouji = Hyouji::all();
        $syouhin_syubetsu = Syouhin_syubetsu::findOrFail($id);
        return view('syouhin_syubetsu-edit', compact('syouhin_syubetsu', 'hyouji'));
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
            'meisyou' => 'required|max:255',
            'kana' => 'required|max:255',
            'hyouji_id' => 'required|numeric',
            'bikou' => 'max:255',
        ]);
        Syouhin_syubetsu::whereId($id)->update($updateData);
        return redirect('/syouhin_syubetsus')->with('completed', 'Syouhin_syubetsu has been updated');
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $syouhin_syubetsu = Syouhin_syubetsu::findOrFail($id);
        $syouhin_syubetsu->delete();
        return redirect('/syouhin_syubetsus')->with('completed', 'Syouhin_syubetsu has been deleted');
    }
}
