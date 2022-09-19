@extends('app')

@section('content')
<div class="row">
    <div class="col-lg-12 margin-tb">
        <div class="pull-left">
            <h2 style="font-size:1rem;">出荷管理編集画面</h2>
        </div>
        <div class="pull-right">
            <a class="btn btn-success" href="{{ url('/syukkakanris') }}">戻る</a>
        </div>
    </div>
</div>

<div style="text-align:right;">
    <form action="{{ route('syukkakanri.update',$syukkakanri->id) }}" method="POST">
        @method('PUT')
        @csrf

        <div class="row">
            <div class="col-12 mb-2 mt-2">
                <div class="form-group">
                    <input type="date" name="hiduke" value="{{ $syukkakanri->hiduke }}" class="form-control" placeholder="日付">
                    @error('hiduke')
                    <span style="color:red;">日付を選択してください</span>
                    @enderror
                </div>
            </div>
            <div class="col-12 mb-2 mt-2">
                <div class="form-group">
                    <select name="koujyou_id" class="form-select">
                        <option>工場を選択してください</option>
                        @foreach ($koujyous as $koujyou)
                        <option class1="{{ $koujyou->id }}" value="{{ old('id', $koujyou->id) }}" @if($koujyou->id==$syukkakanri->koujyou_id || $koujyou->id === (int)old('id')) selected @endif>{{ $koujyou->meisyou }}</option>
                        @endforeach
                    </select>
                    @error('koujyou_id')
                    <span style="color:red;">工場を選択してください</span>
                    @enderror
                </div>
            </div>
            <div class="col-12 mb-2 mt-2">
                <div class="form-group">
                    <select name="syukkasaki_id" class="form-select">
                        <option>出荷先を選択してください</option>
                        @foreach ($syukkasakis as $syukkasaki)
                        <option class1="{{ $syukkasaki->id }}" class2="{{ $syukkasaki->id }}" value="{{ old('id', $syukkasaki->id) }}" @if($syukkasaki->id==$syukkakanri->syukkasaki_id || $syukkasaki->id === (int)old('id')) selected @endif>{{ $syukkasaki->meisyou }}</option>
                        @endforeach
                    </select>
                    @error('syukkasaki_id')
                    <span style="color:red;">出荷先を選択してください</span>
                    @enderror
                </div>
            </div>
            <div class="col-12 mb-2 mt-2">
                <div class="form-group">
                    <select name="genba_id" class="form-select">
                        <option>現場を選択してください</option>
                        @foreach ($genbas as $genba)
                        <option class2="{{ $genba->syukkasaki_id }}" value="{{ old('id', $genba->id) }}" @if($genba->id==$syukkakanri->genba_id || $genba->id === (int)old('id')) selected @endif>{{ $genba->meisyou }}</option>
                        @endforeach
                    </select>
                    @error('genba_id')
                    <span style="color:red;">現場を選択してください</span>
                    @enderror
                </div>
            </div>
            <div class="col-12 mb-2 mt-2">
                <div class="form-group">
                    <select name="koujyouwatashi_id" class="form-select">
                        <option>工場渡しの有無を選択してください</option>
                        @foreach ($koujyouwatashis as $koujyouwatashi)
                        <option value="{{ old('id', $koujyouwatashi->id) }}" @if($koujyouwatashi->id==$syukkakanri->koujyouwatashi_id || $koujyouwatashi->id === (int)old('id')) selected @endif>{{ $koujyouwatashi->meisyou }}</option>
                        @endforeach
                    </select>
                    @error('koujyouwatashi_id')
                    <span style="color:red;">工場渡しの有無を選択してください</span>
                    @enderror
                </div>
            </div>
            <div class="col-12 mb-2 mt-2">
                <div class="form-group">
                    <select name="seihinsyubetsu_id" class="form-select">
                        <option>製品種別を選択してください</option>
                        @foreach ($seihinsyubetsus as $seihinsyubetsu)
                        <option value="{{ old('id', $seihinsyubetsu->id) }}" @if($seihinsyubetsu->id==$syukkakanri->seihinsyubetsu_id || $seihinsyubetsu->id === (int)old('id')) selected @endif>{{ $seihinsyubetsu->meisyou }}</option>
                        @endforeach
                    </select>
                    @error('seihinsyubetsu_id')
                    <span style="color:red;">製品種別を選択してください</span>
                    @enderror
                </div>
            </div>
            <div class="col-12 mb-2 mt-2">
                <div class="form-group">
                    <input type="text" name="suuryou" value="{{ $syukkakanri->suuryou }}" class="form-control" placeholder="打設数量">
                    @error('suuryou')
                    <span style="color:red;">数量を数字で入力してください</span>
                    @enderror
                </div>
            </div>
            <div class="col-12 mb-2 mt-2">
                <div class="form-group">
                    <input type="text" name="motikaerisuuryou" value="{{ $syukkakanri->motikaerisuuryou }}" class="form-control" placeholder="持帰数量">
                    @error('motikaerisuuryou')
                    <span style="color:red;">持帰数量を数字で入力してください</span>
                    @enderror
                </div>
            </div>
            <div class="col-12 mb-2 mt-2">
                <div class="form-group">
                    <input type="text" name="pumpkaisuu" value="{{ $syukkakanri->pumpkaisuu }}" class="form-control" placeholder="ポンプ車打設回数">
                    @error('pumpkaisuu')
                    <span style="color:red;">回数を数字で入力してください</span>
                    @enderror
                </div>
            </div>
            <div class="col-12 mb-2 mt-2">
                <div class="form-group">
                    <input type="text" name="pumpsuuryou" value="{{ $syukkakanri->pumpsuuryou }}" class="form-control" placeholder="ポンプ車打設数量">
                </div>
                @error('pumpsuuryou')
                <span style="color:red;">打設数量を数字で入力してください</span>
                @enderror
            </div>
            <div class="col-12 mb-2 mt-2">
                <div class="form-group">
                    <select name="kigou_id" class="form-select">
                        <option>記号を選択してください</option>
                        @foreach ($kigous as $kigou)
                        <option value="{{ old('id', $kigou->id) }}" @if($kigou->id==$syukkakanri->kigou_id || $kigou->id === (int)old('id')) selected @endif>{{ $kigou->meisyou }}</option>
                        @endforeach
                    </select>
                    @error('kigou_id')
                    <span style="color:red;">記号を選択してください</span>
                    @enderror
                </div>
            </div>
            <div class="col-12 mb-2 mt-2">
                <div class="form-group">
                    <select name="yobikyoudo_id" class="form-select">
                        <option>呼び強度を選択してください</option>
                        @foreach ($yobikyoudos as $yobikyoudo)
                        <option value="{{ old('id', $yobikyoudo->id) }}" @if($yobikyoudo->id==$syukkakanri->yobikyoudo_id || $yobikyoudo->id === (int)old('id')) selected @endif>{{ $yobikyoudo->meisyou }}</option>
                        @endforeach
                    </select>
                    @error('yobikyoudo_id')
                    <span style="color:red;">呼び強度を選択してください</span>
                    @enderror
                </div>
            </div>
            <div class="col-12 mb-2 mt-2">
                <div class="form-group">
                    <input type="text" name="cementryou" value="{{ $syukkakanri->cementryou }}" class="form-control" placeholder="セメント量">
                    @error('cementryou')
                    <span style="color:red;">セメント量を数字で入力してください</span>
                    @enderror
                </div>
            </div>
            <div class="col-12 mb-2 mt-2">
                <div class="form-group">
                    <select name="kotsuzaisunpou_id" class="form-select">
                        <option>骨材寸法を選択してください</option>
                        @foreach ($kotsuzaisunpous as $kotsuzaisunpou)
                        <option value="{{ old('id', $kotsuzaisunpou->id) }}" @if($kotsuzaisunpou->id==$syukkakanri->kotsuzaisunpou_id || $kotsuzaisunpou->id === (int)old('id')) selected @endif>{{ $kotsuzaisunpou->meisyou }}</option>
                        @endforeach
                    </select>
                    @error('kotsuzaisunpou_id')
                    <span style="color:red;">骨材寸法を選択してください</span>
                    @enderror
                </div>
            </div>
            <div class="col-12 mb-2 mt-2">
                <div class="form-group">
                    <select name="slump_id" class="form-select">
                        <option>スランプを選択してください</option>
                        @foreach ($slumps as $slump)
                        <option value="{{ old('id', $slump->id) }}" @if($slump->id==$syukkakanri->slump_id || $slump->id === (int)old('id')) selected @endif>{{ $slump->meisyou }}</option>
                        @endforeach
                    </select>
                    @error('slump_id')
                    <span style="color:red;">スランプを選択してください</span>
                    @enderror
                </div>
            </div>
            <div class="col-12 mb-2 mt-2">
                <div class="form-group">
                    <select name="jissyubetsu_id" class="form-select">
                        <option>JIS種別を選択してください</option>
                        @foreach ($jissyubetsus as $jissyubetsu)
                        <option value="{{ old('id', $jissyubetsu->id) }}" @if($jissyubetsu->id==$syukkakanri->jissyubetsu_id || $jissyubetsu->id === (int)old('id')) selected @endif>{{ $jissyubetsu->meisyou }}</option>
                        @endforeach
                    </select>
                    @error('jissyubetsu_id')
                    <span style="color:red;">JIS種別を選択してください</span>
                    @enderror
                </div>
            </div>
            <div class="col-12 mb-2 mt-2">
                <div class="form-group">
                    <input type="file" name="daikoushiken" value="{{ $syukkakanri->daikoushiken }}" class="form-control" placeholder="代行試験">
                </div>
            </div>
            <div class="col-12 mb-2 mt-2">
                <div class="form-group">
                    <textarea class="form-control" style="height:100px" name="bikou" placeholder="備考">{{ $syukkakanri->bikou }}</textarea>
                </div>
            </div>
            <div class="col-12 mb-2 mt-2">
                <div class="form-group">
                    <input type="datetime" name="delete_at" class="form-control" placeholder="削除日時">
                </div>
            </div>
            <div class="col-12 mb-2 mt-2">
                <div class="form-group">
                    <input type="datetime" name="create_at" class="form-control" placeholder="作成日時">
                </div>
            </div>
            <div class="col-12 mb-2 mt-2">
                <div class="form-group">
                    <input type="datetime" name="update_at" class="form-control" placeholder="更新日時">
                </div>
            </div>
            <div class="col-12 mb-2 mt-2">
                <button type="submit" class="btn btn-primary w-100">変更</button>
            </div>
        </div>
    </form>
</div>
<script src="{{ asset('js/linkingSelectboxes.js') }}"></script>
@endsection