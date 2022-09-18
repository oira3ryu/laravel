<?php

namespace App\Http\Controllers;

use App\Models\Syukkakanri;
use App\Models\Koujyou;
use App\Models\Syukkasaki;
use App\Models\Genba;
use App\Models\Koujyouwatashi;
use App\Models\Seihinsyubetsu;
use App\Models\Kigou;
use App\Models\Yobikyoudo;
use App\Models\Kotsuzaisunpou;
use App\Models\Slump;
use App\Models\Jissyubetsu;
use Illuminate\Pagination\Paginator;
use Illuminate\Http\Request;

class SyukkakanriController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $syukkakanris = Syukkakanri::select([
            'a.id',
            'a.hiduke',
            'b.meisyou as koujyou_id',
            'c.meisyou as syukkasaki_id',
            'd.meisyou as genba_id',
            'e.meisyou as koujyouwatashi_id',
            'f.meisyou as seihinsyubetsu_id',
            'a.suuryou',
            'a.motikaerisuuryou',
            'a.pumpkaisuu',
            'a.pumpsuuryou',
            'g.meisyou as kigou_id',
            'h.meisyou as yobikyoudo_id',
            'a.cementryou',
            'i.meisyou as kotsuzaisunpou_id',
            'j.meisyou as slump_id',
            'k.meisyou as jissyubetsu_id',
            'a.daikoushiken',
            'a.bikou',
            'a.delete_at',
            'a.created_at',
            'a.updated_at',
            'l.name as user_name',
        ])
            ->from('syukkakanris as a')
            ->join('koujyous as b', function ($join) {
                $join->on('a.koujyou_id', '=', 'b.id');
            })
            ->join('syukkasakis as c', function ($join) {
                $join->on('a.syukkasaki_id', '=', 'c.id');
            })
            ->join('genbas as d', function ($join) {
                $join->on('a.genba_id', '=', 'd.id');
            })
            ->join('koujyouwatashis as e', function ($join) {
                $join->on('a.koujyouwatashi_id', '=', 'e.id');
            })
            ->join('seihinsyubetsus as f', function ($join) {
                $join->on('a.seihinsyubetsu_id', '=', 'f.id');
            })
            ->join('kigous as g', function ($join) {
                $join->on('a.kigou_id', '=', 'g.id');
            })
            ->join('yobikyoudos as h', function ($join) {
                $join->on('a.yobikyoudo_id', '=', 'h.id');
            })
            ->join('kotsuzaisunpous as i', function ($join) {
                $join->on('a.kotsuzaisunpou_id', '=', 'i.id');
            })
            ->join('slumps as j', function ($join) {
                $join->on('a.slump_id', '=', 'j.id');
            })
            ->join('jissyubetsus as k', function ($join) {
                $join->on('a.jissyubetsu_id', '=', 'k.id');
            })
            ->join('users as l', function ($join) {
                $join->on('a.user_id', '=', 'l.id');
            })
            ->orderBy('a.id', 'DESC')
            ->paginate(5);
        if(isset(\Auth::user()->name)){   
            return view('index', compact('syukkakanris'))
            ->with('user_name', \Auth::user()->name)
            ->with('page_id', request()->page)
            ->with('i', (request()->input('page', 1) - 1) * 5); 
        }else{
            return view('index', compact('syukkakanris'))
            ->with('page_id', request()->page)
            ->with('i', (request()->input('page', 1) - 1) * 5);             
        }//
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $koujyous = Koujyou::all();
        $syukkasakis = Syukkasaki::all();
        $genbas = Genba::all();
        $koujyouwatashis = Koujyouwatashi::all();
        $seihinsyubetsus = Seihinsyubetsu::all();
        $kigous = Kigou::all();
        $yobikyoudos = Yobikyoudo::all();
        $kotsuzaisunpous = Kotsuzaisunpou::all();
        $slumps = Slump::all();
        $jissyubetsus = Jissyubetsu::all();

        return view('create')
            ->with('koujyous', $koujyous)
            ->with('syukkasakis', $syukkasakis)
            ->with('genbas', $genbas)
            ->with('koujyouwatashis', $koujyouwatashis)
            ->with('seihinsyubetsus', $seihinsyubetsus)
            ->with('kigous', $kigous)
            ->with('yobikyoudos', $yobikyoudos)
            ->with('kotsuzaisunpous', $kotsuzaisunpous)
            ->with('slumps', $slumps)
            ->with('jissyubetsus', $jissyubetsus);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'hiduke' => 'required|date',
            'koujyou_id' => 'required|integer',
            'syukkasaki_id' => 'required|integer',
            'genba_id' => 'required|integer',
            'koujyouwatashi_id' => 'required|integer',
            'seihinsyubetsu_id' => 'required|integer',
            'suuryou' => 'required|numeric',
            'motikaerisuuryou' => 'required|numeric',
            'pumpkaisuu' => 'required|numeric',
            'pumpsuuryou' => 'required|numeric',
            'kigou_id' => 'required|integer',
            'yobikyoudo_id' => 'required|integer',
            'cementryou' => 'required|numeric',
            'kotsuzaisunpou_id' => 'required|integer',
            'slump_id' => 'required|integer',
            'jissyubetsu_id' => 'required|integer',
        ]);

        $syukkakanri = new Syukkakanri;
        $syukkakanri->hiduke = $request->input(['hiduke']);
        $syukkakanri->koujyou_id = $request->input(['koujyou_id']);
        $syukkakanri->syukkasaki_id = $request->input(['syukkasaki_id']);
        $syukkakanri->genba_id = $request->input(['genba_id']);
        $syukkakanri->koujyouwatashi_id = $request->input(['koujyouwatashi_id']);
        $syukkakanri->seihinsyubetsu_id = $request->input(['seihinsyubetsu_id']);
        $syukkakanri->suuryou = $request->input(['suuryou']);
        $syukkakanri->motikaerisuuryou = $request->input(['motikaerisuuryou']);
        $syukkakanri->pumpkaisuu = $request->input(['pumpkaisuu']);
        $syukkakanri->pumpsuuryou = $request->input(['pumpsuuryou']);
        $syukkakanri->kigou_id = $request->input(['kigou_id']);
        $syukkakanri->yobikyoudo_id = $request->input(['yobikyoudo_id']);
        $syukkakanri->cementryou = $request->input(['cementryou']);
        $syukkakanri->kotsuzaisunpou_id = $request->input(['kotsuzaisunpou_id']);
        $syukkakanri->slump_id = $request->input(['slump_id']);
        $syukkakanri->jissyubetsu_id = $request->input(['jissyubetsu_id']);
        $syukkakanri->user_id = \Auth::user()->id;
        $syukkakanri->save();

        return redirect()->route('syukkakanris.index')
            ->with('success', '出荷情報を登録しました'); //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Syukkakanri  $syukkakanri
     * @return \Illuminate\Http\Response
     */
    public function show(Syukkakanri $syukkakanri)
    {
        $koujyous = Koujyou::all();
        $syukkasakis = Syukkasaki::all();
        $genbas = Genba::all();
        $koujyouwatashis = Koujyouwatashi::all();
        $seihinsyubetsus = Seihinsyubetsu::all();
        $kigous = Kigou::all();
        $yobikyoudos = Yobikyoudo::all();
        $kotsuzaisunpous = Kotsuzaisunpou::all();
        $slumps = Slump::all();
        $jissyubetsus = Jissyubetsu::all();

        return view('show',compact('syukkakanri'))
            ->with('page_id', request()->page_id)
            ->with('koujyous', $koujyous)
            ->with('syukkasakis', $syukkasakis)
            ->with('genbas', $genbas)
            ->with('koujyouwatashis', $koujyouwatashis)
            ->with('seihinsyubetsus', $seihinsyubetsus)
            ->with('kigous', $kigous)
            ->with('yobikyoudos', $yobikyoudos)
            ->with('kotsuzaisunpous', $kotsuzaisunpous)
            ->with('slumps', $slumps)
            ->with('jissyubetsus', $jissyubetsus);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Syukkakanri  $syukkakanri
     * @return \Illuminate\Http\Response
     */
    public function edit(Syukkakanri $syukkakanri)
    {
        $koujyous = Koujyou::all();
        $syukkasakis = Syukkasaki::all();
        $genbas = Genba::all();
        $koujyouwatashis = Koujyouwatashi::all();
        $seihinsyubetsus = Seihinsyubetsu::all();
        $kigous = Kigou::all();
        $yobikyoudos = Yobikyoudo::all();
        $kotsuzaisunpous = Kotsuzaisunpou::all();
        $slumps = Slump::all();
        $jissyubetsus = Jissyubetsu::all();

        return view('edit', compact('syukkakanri'))
            ->with('koujyous', $koujyous)
            ->with('syukkasakis', $syukkasakis)
            ->with('genbas', $genbas)
            ->with('koujyouwatashis', $koujyouwatashis)
            ->with('seihinsyubetsus', $seihinsyubetsus)
            ->with('kigous', $kigous)
            ->with('yobikyoudos', $yobikyoudos)
            ->with('kotsuzaisunpous', $kotsuzaisunpous)
            ->with('slumps', $slumps)
            ->with('jissyubetsus', $jissyubetsus);
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Syukkakanri  $syukkakanri
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Syukkakanri $syukkakanri)
    {
        $request->validate([
            'hiduke' => 'required|date',
            'koujyou_id' => 'required|integer',
            'syukkasaki_id' => 'required|integer',
            'genba_id' => 'required|integer',
            'koujyouwatashi_id' => 'required|integer',
            'seihinsyubetsu_id' => 'required|integer',
            'suuryou' => 'required|numeric',
            'motikaerisuuryou' => 'required|numeric',
            'pumpkaisuu' => 'required|numeric',
            'pumpsuuryou' => 'required|numeric',
            'kigou_id' => 'required|integer',
            'yobikyoudo_id' => 'required|integer',
            'cementryou' => 'required|numeric',
            'kotsuzaisunpou_id' => 'required|integer',
            'slump_id' => 'required|integer',
            'jissyubetsu_id' => 'required|integer',
        ]);

        $syukkakanri->hiduke = $request->input(['hiduke']);
        $syukkakanri->koujyou_id = $request->input(['koujyou_id']);
        $syukkakanri->syukkasaki_id = $request->input(['syukkasaki_id']);
        $syukkakanri->genba_id = $request->input(['genba_id']);
        $syukkakanri->koujyouwatashi_id = $request->input(['koujyouwatashi_id']);
        $syukkakanri->seihinsyubetsu_id = $request->input(['seihinsyubetsu_id']);
        $syukkakanri->suuryou = $request->input(['suuryou']);
        $syukkakanri->motikaerisuuryou = $request->input(['motikaerisuuryou']);
        $syukkakanri->pumpkaisuu = $request->input(['pumpkaisuu']);
        $syukkakanri->pumpsuuryou = $request->input(['pumpsuuryou']);
        $syukkakanri->kigou_id = $request->input(['kigou_id']);
        $syukkakanri->yobikyoudo_id = $request->input(['yobikyoudo_id']);
        $syukkakanri->cementryou = $request->input(['cementryou']);
        $syukkakanri->kotsuzaisunpou_id = $request->input(['kotsuzaisunpou_id']);
        $syukkakanri->slump_id = $request->input(['slump_id']);
        $syukkakanri->jissyubetsu_id = $request->input(['jissyubetsu_id']);
        $syukkakanri->user_id = \Auth::user()->id;
        $syukkakanri->save();

        return redirect()->route('syukkakanris.index')
            ->with('success', '出荷情報を更新しました'); //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Syukkakanri  $syukkakanri
     * @return \Illuminate\Http\Response
     */
    public function destroy(Syukkakanri $syukkakanri)
    {
        $syukkakanri->delete();
        return redirect()->route('syukkakanris.index')
        ->with('success','出荷管理'.$syukkakanri->genba_id.'を削除しました');//
    }
}
