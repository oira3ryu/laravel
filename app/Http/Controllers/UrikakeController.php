<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Nebiki;
use App\Models\Koujyou;
use App\Models\Nounyusaki;
use App\Models\Genba;
use App\Models\Syouhin;
use App\Models\Hyouji;
use App\Models\Tanka_syubetsu;
use App\Models\Tanka;
use App\Models\Urikake;

class UrikakeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $keyword = $request->input('keyword');
        $nebiki = Nebiki::all();
        $koujyou = Koujyou::all();
        $nounyusaki = Nounyusaki::all();
        $genba = Genba::all();
        $syouhin = Syouhin::all();
        $hyouji = Hyouji::all();
        $tanka_syubetsu = Tanka_syubetsu::all();
        $tanka = Tanka::all();
        $urikake = Urikake::select(
            'urikakes.id',
            'urikakes.hiduke',
            'urikakes.koujyou_id',
            'koujyous.meisyou',
            'urikakes.nounyusaki_id',
            'nounyusakis.meisyou',
            'urikakes.genba_id',
            'genbas.meisyou',
            'urikakes.syouhin_id',
            'syouhins.meisyou',
            'tankas.kaishibi',
            //'tankas.tanka',
            Urikake::raw('case 
             when syouhins.syouhin_syubetsu_id <= 2 then
             tankas.tanka + nebikis.nebiki
            else 
             tankas.tanka
            end as tanka'),
            'urikakes.suuryou',
            Urikake::raw('case 
             when syouhins.syouhin_syubetsu_id <= 2 then
             ((tankas.tanka + nebikis.nebiki) * urikakes.suuryou)
            else 
             ((tankas.tanka) * urikakes.suuryou)
            end as kingaku'),
            'urikakes.hyouji_id',
            'hyoujis.meisyou',
            'urikakes.bikou',
            'nebikis.tanka_syubetsu_id'
        )
            ->leftjoin('tankas', 'urikakes.syouhin_id', '=', 'tankas.syouhin_id')
            ->leftjoin('tanka_syubetsus', 'tankas.tanka_syubetsu_id', '=', 'tanka_syubetsus.id')
            ->leftjoin('nounyusakis', 'urikakes.nounyusaki_id', '=', 'nounyusakis.id')
            ->leftjoin('koujyous', 'urikakes.koujyou_id', '=', 'koujyous.id')
            ->leftjoin('genbas', 'urikakes.genba_id', '=', 'genbas.id')
            ->leftjoin('syouhins', 'urikakes.syouhin_id', '=', 'syouhins.id')
            ->leftjoin('hyoujis', 'urikakes.hyouji_id', '=', 'hyoujis.id')
            ->rightjoin('nebikis', function ($join) {
                $join->on('urikakes.nounyusaki_id', '=', 'nebikis.nounyusaki_id')
                    ->on('nounyusakis.id', '=', 'nebikis.nounyusaki_id')
                    ->on('nebikis.tanka_syubetsu_id', '=', 'tanka_syubetsus.id');
            })
            ->where(
                'tankas.kaishibi',
                '>=',
                Urikake::raw(
                    '(SELECT MAX(tankas.kaishibi) FROM tankas, tanka_syubetsus, urikakes, nebikis 
                    WHERE tankas.syouhin_id = urikakes.syouhin_id 
                    AND tankas.tanka_syubetsu_id = nebikis.tanka_syubetsu_id
                    AND tanka_syubetsus.id = nebikis.tanka_syubetsu_id)'
                )
            )
            ->orderByRaw('hiduke desc, id desc')
            ->get();

        return view('urikake-index', compact('urikake', 'keyword', 'nebiki', 'koujyou', 'nounyusaki', 'genba', 'syouhin', 'tanka_syubetsu', 'tanka', 'hyouji'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $koujyou = Koujyou::all();
        $nounyusaki = Nounyusaki::all();
        $genba = Genba::all();
        $syouhin = Syouhin::all();
        $tanka = Tanka::all();
        $hyouji = Hyouji::all();
        return view('urikake-create', compact('hyouji', 'koujyou', 'nounyusaki', 'genba', 'syouhin', 'tanka'));
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
            'hiduke' => 'required|date',
            'koujyou_id' => 'required',
            'nounyusaki_id' => 'required',
            'genba_id' => 'required',
            'syouhin_id' => 'required',
            'suuryou' => 'required|numeric',
            'hyouji_id' => 'required',
            'bikou' => 'max:255',
        ]);
        $urikake = Urikake::create($storeData);
        return redirect('/urikakes')->with('completed', 'Tanka has been saved!');        //
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
        $koujyou = Koujyou::all();
        $nounyusaki = Nounyusaki::all();
        $genba = Genba::all();
        $hyouji = Hyouji::all();
        $syouhin = Syouhin::all();
        $urikake = Urikake::findOrFail($id);
        return view('urikake-edit', compact('urikake', 'koujyou', 'nounyusaki', 'genba', 'hyouji', 'syouhin'));
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
            'hiduke' => 'required|date',
            'koujyou_id' => 'required',
            'nounyusaki_id' => 'required',
            'genba_id' => 'required',
            'syouhin_id' => 'required',
            'suuryou' => 'required|numeric',
            'hyouji_id' => 'required',
            'bikou' => 'max:255',
        ]);
        Urikake::whereId($id)->update($updateData);
        return redirect('/urikakes')->with('completed', 'Urikake has been updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $urikake = Urikake::findOrFail($id);
        $urikake->delete();
        return redirect('/urikakes')->with('completed', 'Urikake has been deleted');        //
    }
}
