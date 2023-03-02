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
        $total = 0;
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
            'tankas.tanka',
            'urikakes.suuryou',
            Urikake::raw('case 
             when syouhins.syouhin_syubetsu_id < 2 then
             ((tankas.tanka + nebikis.nebiki) * urikakes.suuryou)
            else 
             ((tankas.tanka) * urikakes.suuryou)
            end as kingaku'),
            'urikakes.hyouji',
            'hyoujis.meisyou',
            'urikakes.bikou'
        )
            ->leftjoin('nebikis', 'nebikis.nounyusaki_id', '=', 'urikakes.nounyusaki_id')
            ->leftjoin('koujyous', 'koujyous.id', '=', 'urikakes.koujyou_id')
            ->leftjoin('nounyusakis', 'nounyusakis.id', '=', 'urikakes.nounyusaki_id')
            ->leftjoin('genbas', 'genbas.id', '=', 'urikakes.genba_id')
            ->leftjoin('syouhins', 'syouhins.id', '=', 'urikakes.syouhin_id')
            ->leftjoin('hyoujis', 'hyoujis.id', '=', 'urikakes.hyouji')
            ->leftjoin('tanka_syubetsus', 'tanka_syubetsus.id', '=', 'nebikis.tanka_syubetsu_id')
            ->leftjoin('tankas', function ($join) {
                $join->on('tankas.syouhin_id', '=', 'urikakes.syouhin_id')
                    ->on('tankas.tanka_syubetsu_id', '=', 'nebikis.tanka_syubetsu_id')
                    ->on('tankas.kaishibi', '<=', 'urikakes.hiduke');
            })
            ->where('urikakes.hiduke', 'LIKE', "%{$keyword}%")
            ->orWhere('koujyous.meisyou', 'LIKE', "%{$keyword}%")
            ->orWhere('nounyusakis.meisyou', 'LIKE', "%{$keyword}%")
            ->orWhere('genbas.meisyou', 'LIKE', "%{$keyword}%")
            ->orWhere('syouhins.meisyou', 'LIKE', "%{$keyword}%")
            ->orderBy('hiduke')
            ->paginate(25);

        $urikake_sum = Urikake::select(
            'urikakes.koujyou_id',
            Urikake::raw('sum(case 
                when syouhins.syouhin_syubetsu_id = 2 then
                (urikakes.suuryou)
                end) as suuryou'),
            Urikake::raw('sum(case 
                when syouhins.syouhin_syubetsu_id < 2 then
                ((tankas.tanka + nebikis.nebiki) * urikakes.suuryou)
                else 
                ((tankas.tanka) * urikakes.suuryou)
                end) as kingaku')
        )
            ->leftjoin('nebikis', 'nebikis.nounyusaki_id', '=', 'urikakes.nounyusaki_id')
            ->leftjoin('koujyous', 'koujyous.id', '=', 'urikakes.koujyou_id')
            ->leftjoin('nounyusakis', 'nounyusakis.id', '=', 'urikakes.nounyusaki_id')
            ->leftjoin('genbas', 'genbas.id', '=', 'urikakes.genba_id')
            ->leftjoin('syouhins', 'syouhins.id', '=', 'urikakes.syouhin_id')
            ->leftjoin('tanka_syubetsus', 'tanka_syubetsus.id', '=', 'nebikis.tanka_syubetsu_id')
            ->leftjoin('tankas', function ($join) {
                $join->on('tankas.syouhin_id', '=', 'urikakes.syouhin_id')
                    ->on('tankas.tanka_syubetsu_id', '=', 'nebikis.tanka_syubetsu_id')
                    ->on('tankas.kaishibi', '<=', 'urikakes.hiduke');
            })
            ->groupBy(
                'urikakes.koujyou_id'
            )
            ->where('urikakes.hiduke', 'LIKE', "%{$keyword}%")
            ->orWhere('koujyous.meisyou', 'LIKE', "%{$keyword}%")
            ->orWhere('nounyusakis.meisyou', 'LIKE', "%{$keyword}%")
            ->orWhere('genbas.meisyou', 'LIKE', "%{$keyword}%")
            ->orWhere('syouhins.meisyou', 'LIKE', "%{$keyword}%")
            ->orderBy('hiduke')
            ->paginate(25);

        return view('urikake-index', compact('urikake', 'urikake_sum', 'keyword', 'nebiki', 'koujyou', 'nounyusaki', 'genba', 'syouhin', 'tanka_syubetsu', 'tanka', 'hyouji'));
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
            'koujyou_id' => 'required|numeric',
            'nounyusaki_id' => 'required|numeric',
            'genba_id' => 'required|numeric',
            'syouhin_id' => 'required|numeric',
            'suuryou' => 'required|numeric',
            'hyouji' => 'required',
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
            'koujyou_id' => 'required|numeric',
            'nounyusaki_id' => 'required|numeric',
            'genba_id' => 'required|numeric',
            'syouhin_id' => 'required|numeric',
            'suuryou' => 'required|numeric',
            'hyouji' => 'required',
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
