<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Koujyou;
use App\Models\Hyouji;

class KoujyouController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $hyouji = Hyouji::all();
        $koujyou = Koujyou::select(
            'koujyous.id',
            'koujyous.meisyou',
            'koujyous.kana',
            'koujyous.hyouji_id',
            'koujyous.bikou'
        )
            ->join('hyoujis', 'hyoujis.id', '=', 'koujyous.hyouji_id')
            ->orderByRaw('id desc')
            ->get();
        return view('koujyou-index', compact('koujyou', 'hyouji'));
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $hyouji = Hyouji::all();
        return view('koujyou-create', compact('hyouji'));
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
        $koujyou = Koujyou::create($storeData);
        return redirect('/koujyous')->with('completed', 'Koujyou has been saved!');
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
        $koujyou = Koujyou::findOrFail($id);
        $hyouji = Hyouji::all();
        return view('koujyou-edit', compact('koujyou', 'hyouji'));
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
        Koujyou::whereId($id)->update($updateData);
        return redirect('/koujyous')->with('completed', 'Koujyou has been updated');
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $koujyou = Koujyou::findOrFail($id);
        $koujyou->delete();
        return redirect('/koujyous')->with('completed', 'Koujyou has been deleted');
    }
}
