<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\Hyouji;

class HyoujiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $hyouji = Hyouji::all();
        return view('hyouji-index', compact('hyouji'));
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('hyouji-create');
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
            'hyouji' => 'required|numeric',
            'bikou' => 'max:255',
        ]);
        $hyouji = Hyouji::create($storeData);
        return redirect('/hyoujis')->with('completed', 'Hyouji has been saved!');
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
        $hyouji = Hyouji::findOrFail($id);
        return view('hyouji-edit', compact('hyouji'));
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
            'hyouji' => 'required|numeric',
            'bikou' => 'max:255',
        ]);
        Hyouji::whereId($id)->update($updateData);
        return redirect('/hyoujis')->with('completed', 'Hyouji has been updated');
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $hyouji = Hyouji::findOrFail($id);
        $hyouji->delete();
        return redirect('/hyoujis')->with('completed', 'Hyouji has been deleted');
    }
}
