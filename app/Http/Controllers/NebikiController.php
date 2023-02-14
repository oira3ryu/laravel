<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Nebiki;
use App\Models\Hyouji;
use App\Models\Nounyusaki;
use App\Models\Koujyou;
use App\Models\Tanka_syubetsu;

class NebikiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $tanka_syubetsu = Tanka_syubetsu::all();
        $hyouji = Hyouji::all();
        $nounyusaki = Nounyusaki::all();
        $nebiki = Nebiki::select(
            'nebikis.id',
            'nounyusakis.meisyou as nounyusaki_id',
            'tanka_syubetsus.meisyou as tanka_syubetsu_id',
            'nebikis.nebiki',
            'nebikis.kaishibi',
            'nebikis.syuuryoubi',
            'nebikis.hyouji',
            'nebikis.narabikae',
            'nebikis.bikou')
            ->join('nounyusakis','nounyusakis.id','=','nebikis.nounyusaki_id')
            ->join('tanka_syubetsus','tanka_syubetsus.id','=','nebikis.tanka_syubetsu_id')
            ->join('hyoujis','hyoujis.id','=','nebikis.hyouji')
            ->get();
        return view('nebiki-index', compact('nebiki','hyouji','nounyusaki','tanka_syubetsu'));            
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $tanka_syubetsu = Tanka_syubetsu::all();
        $koujyou = Koujyou::all();
        $nounyusaki = Nounyusaki::all();
        $hyouji = Hyouji::all();        
        return view('nebiki-create', compact('hyouji','nounyusaki','koujyou','tanka_syubetsu'));
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
            'nounyusaki_id' => 'required|numeric',
            'tanka_syubetsu_id' => 'required|numeric',
            'nebiki' => 'required|numeric',            
            'kaishibi' => 'date',
            'syuuryoubi' => 'date',
            'nebiki' => 'numeric',
            'hyouji' => 'required|numeric',
            'narabikae' => 'max:255',
            'bikou' => 'max:255',
        ]);
        $nebiki = Nebiki::create($storeData);
        return redirect('/nebikis')->with('completed', 'Nebiki has been saved!');
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
        $tanka_syubetsu = Tanka_syubetsu::all();
        $koujyou = Koujyou::all();
        $hyouji = Hyouji::all();
        $nounyusaki = Nounyusaki::all();        
        return view('nebiki-edit', compact('nebiki','nounyusaki','hyouji','koujyou','tanka_syubetsu'));
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
            'nounyusaki_id' => 'required|numeric',
            'tanka_syubetsu_id' => 'required|numeric',
            'nebiki' => 'required|numeric',            
            'kaishibi' => 'date',
            'syuuryoubi' => 'date',
            'nebiki' => 'numeric',
            'hyouji' => 'required|numeric',
            'narabikae' => 'max:255',
            'bikou' => 'max:255',
        ]);
        Nebiki::whereId($id)->update($updateData);
        return redirect('/nebikis')->with('completed', 'Nebiki has been updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $nebiki = Nebiki::findOrFail($id);
        $nebiki->delete();
        return redirect('/nebikis')->with('completed', 'Nebiki has been deleted');
    }
}
