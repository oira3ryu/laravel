<?php

namespace App\Http\Controllers;

use App\Models\Kijyunbi;
use App\Models\Hyouji;
use Illuminate\Http\Request;

class KijyunbiController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $hyouji = Hyouji::all();
        $kijyunbi = Kijyunbi::select(
            'kijyunbis.id',
            'kijyunbis.hiduke',
            'kijyunbis.hyouji_id',
            'kijyunbis.bikou'
        )
            ->join('hyoujis', 'hyoujis.id', '=', 'kijyunbis.hyouji_id')
            ->get();
        return view('kijyunbi-index', compact('kijyunbi', 'hyouji'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $hyouji = Hyouji::all();
        return view('kijyunbi-create', compact('hyouji'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $storeData = $request->validate([
            'hiduke' => 'required|date',
            'hyouji_id' => 'required|numeric',
            'bikou' => 'max:255',
        ]);
        $kijyunbi = Kijyunbi::create($storeData);
        return redirect('/kijyunbis')->with('completed', 'Kijyunbi has been saved!');
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $hyouji = Hyouji::all();
        $kijyunbi = Kijyunbi::findOrFail($id);
        return view('kijyunbi-edit', compact('kijyunbi', 'hyouji'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $updateData = $request->validate([
            'hiduke' => 'required|date',
            'hyouji_id' => 'required|numeric',
            'bikou' => 'max:255',
        ]);
        Kijyunbi::whereId($id)->update($updateData);
        return redirect('/kijyunbis')->with('completed', 'Kijyunbi has been updated');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $kijyunbi = Kihyoubi::findOrFail($id);
        $kijyunbi->delete();
        return redirect('/kijyunbis')->with('completed', 'Kijyunbi has been deleted');
    }
}
