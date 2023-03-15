<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Nounyusaki;
use App\Models\Hyouji;
use App\Models\Koujyou;

class NounyusakiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $hyouji = Hyouji::all();
        $koujyou = Koujyou::all();
        $nounyusaki = Nounyusaki::select(
            'nounyusakis.id',
            'nounyusakis.koujyou_id',
            'koujyous.meisyou',
            'nounyusakis.meisyou',
            'nounyusakis.kana',
            'nounyusakis.hyouji_id',
            //'hyoujis.meisyou',
            'nounyusakis.bikou'
        )
            ->join('koujyous', 'koujyous.id', '=', 'nounyusakis.koujyou_id')
            ->join('hyoujis', 'hyoujis.id', '=', 'nounyusakis.hyouji_id')
            ->orderByRaw('id desc')
            ->get();
        return view('nounyusaki-index', compact('nounyusaki', 'koujyou', 'hyouji'));
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $hyouji = Hyouji::all();
        $koujyou = Koujyou::all();
        return view('nounyusaki-create', compact('koujyou', 'hyouji'));
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
            'koujyou_id' => 'required|numeric',
            'meisyou' => 'required|max:255',
            'kana' => 'required|max:255',
            'nounyusaki' => 'required|numeric',
            'hyouji_id' => 'required|numeric',
            'bikou' => 'max:255',
        ]);
        $nounyusaki = Nounyusaki::create($storeData);
        return redirect('/nounyusakis')->with('completed', 'Nounyusaki has been saved!');
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
        $koujyou = Koujyou::all();
        $nounyusaki = Nounyusaki::findOrFail($id);
        return view('nounyusaki-edit', compact('nounyusaki', 'koujyou', 'hyouji'));
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
            'koujyou_id' => 'required|numeric',
            'meisyou' => 'required|max:255',
            'kana' => 'required|max:255',
            'nounyusaki' => 'required|numeric',
            'hyouji_id' => 'required|numeric',
            'bikou' => 'max:255',
        ]);
        Nounyusaki::whereId($id)->update($updateData);
        return redirect('/nounyusakis')->with('completed', 'Nounyusaki has been updated');
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $nounyusaki = Nounyusaki::findOrFail($id);
        $nounyusaki->delete();
        return redirect('/nounyusakis')->with('completed', 'Nounyusaki has been deleted');
    }
}
