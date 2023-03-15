<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Tanka_syubetsu;
use App\Models\Hyouji;

class Tanka_syubetsuController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $hyouji = Hyouji::all();
        $tanka_syubetsu = Tanka_syubetsu::select(
            'tanka_syubetsus.id',
            'tanka_syubetsus.meisyou',
            'tanka_syubetsus.kana',
            'tanka_syubetsus.hyouji_id',
            'hyoujis.meisyou',
            'tanka_syubetsus.bikou'
        )
            ->join('hyoujis', 'hyoujis.id', '=', 'tanka_syubetsus.hyouji_id')
            ->orderByRaw('id desc')
            ->get();
        return view('tanka_syubetsu-index', compact('tanka_syubetsu', 'hyouji'));
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $hyouji = Hyouji::all();
        return view('tanka_syubetsu-create', compact('hyouji'));
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
        $tanka_syubetsu = Tanka_syubetsu::create($storeData);
        return redirect('/tanka_syubetsus')->with('completed', 'Tanka_syubetsu has been saved!');
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
        $tanka_syubetsu = Tanka_syubetsu::findOrFail($id);
        return view('tanka_syubetsu-edit', compact('tanka_syubetsu', 'hyouji'));
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
        Tanka_syubetsu::whereId($id)->update($updateData);
        return redirect('/tanka_syubetsus')->with('completed', 'Tanka_syubetsu has been updated');
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $tanka_syubetsu = Tanka_syubetsu::findOrFail($id);
        $tanka_syubetsu->delete();
        return redirect('/tanka_syubetsus')->with('completed', 'Tanka_syubetsu has been deleted');
    }
}
