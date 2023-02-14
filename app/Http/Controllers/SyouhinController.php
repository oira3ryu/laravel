<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\Syouhin;
use App\Models\Syouhin_syubetsu;
use App\Models\Hyouji;

class SyouhinController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $hyouji = Hyouji::all();
        $syouhin_syubetsu = Syouhin_syubetsu::all(); 
        $syouhin = Syouhin::select(
            'syouhins.id',
            'syouhin_syubetsus.meisyou as syouhin_syubetsu_id',
            'syouhins.meisyou',
            'syouhins.kana',
            'hyoujis.meisyou as hyouji',
            'syouhins.narabikae',
            'syouhins.bikou')
            ->join('syouhin_syubetsus','syouhin_syubetsus.id','=','syouhins.syouhin_syubetsu_id') 
            ->join('hyoujis','hyoujis.id','=','syouhins.hyouji')
            ->get();         
        return view('syouhin-index', compact('syouhin','syouhin_syubetsu','hyouji'));
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $hyouji = Hyouji::all();
        $syouhin_syubetsu = Syouhin_syubetsu::all();         
        return view('syouhin-create', compact('syouhin_syubetsu','hyouji'));
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
            'syouhin_syubetsu_id' => 'required|numeric',
            'meisyou' => 'required|max:255',
            'kana' => 'required|max:255',
            'hyouji' => 'required|numeric',
            'narabikae' => 'max:255',
            'bikou' => 'max:255',
        ]);
        $syouhin = Syouhin::create($storeData);
        return redirect('/syouhins')->with('completed', 'Syouhin has been saved!');
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
        $syouhin_syubetsu = Syouhin_syubetsu::all();
        $syouhin = Syouhin::findOrFail($id);
        return view('syouhin-edit', compact('syouhin','syouhin_syubetsu','hyouji'));
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
            'syouhin_syubetsu_id' => 'required|numeric',
            'meisyou' => 'required|max:255',
            'kana' => 'required|max:255',
            'hyouji' => 'required|numeric',
            'narabikae' => 'max:255',
            'bikou' => 'max:255',
        ]);
        Syouhin::whereId($id)->update($updateData);
        return redirect('/syouhins')->with('completed', 'Syouhin has been updated');
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $syouhin = Syouhin::findOrFail($id);
        $syouhin->delete();
        return redirect('/syouhins')->with('completed', 'Syouhin has been deleted');
    }
}
