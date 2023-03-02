<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\Genba;
use App\Models\Hyouji;
use App\Models\Koujyou;
use App\Models\Nounyusaki;

class GenbaController extends Controller
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
        $nounyusaki = Nounyusaki::all();
        $genba = Genba::select(
            'genbas.id', 
            'koujyous.meisyou as koujyou_id',
            'nounyusakis.meisyou as nounyusaki_id',                        
            'genbas.meisyou', 
            'genbas.kana', 
            'hyoujis.meisyou as hyouji', 
            'genbas.bikou')
            ->join('koujyous','koujyous.id','=','genbas.koujyou_id')
            ->join('nounyusakis','nounyusakis.id','=','genbas.nounyusaki_id')
            ->join('hyoujis','hyoujis.id','=','genbas.hyouji')
            ->get();
        return view('genba-index', compact('genba','koujyou','nounyusaki','hyouji'));
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $koujyou = Koujyou::all();          
        $hyouji = Hyouji::all();
        $nounyusaki = Nounyusaki::all();                  
        return view('genba-create', compact('koujyou', 'hyouji','nounyusaki'));
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
            'nounyusaki_id' => 'required|numeric', 
            'meisyou' => 'required|max:255',
            'kana' => 'required|max:255',
            'hyouji' => 'required|numeric',
            'bikou' => 'max:255',
        ]);
        $genba = Genba::create($storeData);
        return redirect('/genbas')->with('completed', 'Genba has been saved!');
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
        $nounyusaki = Nounyusaki::all();
        $genba = Genba::findOrFail($id);
        return view('genba-edit', compact('genba','koujyou','nounyusaki','hyouji'));
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
            'nounyusaki_id' => 'required|numeric', 
            'meisyou' => 'required|max:255',
            'kana' => 'required|max:255',
            'hyouji' => 'required|numeric',
            'bikou' => 'max:255',
        ]);
        Genba::whereId($id)->update($updateData);
        return redirect('/genbas')->with('completed', 'Genba has been updated');
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $genba = Genba::findOrFail($id);
        $genba->delete();
        return redirect('/genbas')->with('completed', 'Genba has been deleted');
    }
}
