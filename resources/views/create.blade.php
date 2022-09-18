@extends('app')

@section('content')
<div class="row">
    <div class="col-lg-12 margin-tb">
        <div class="pull-left">
            <h2 style="font-size:1rem;">出荷管理登録画面</h2>
        </div>
        <div class="pull-right">
            <a class="btn btn-success" href="{{ url('/syukkakanris') }}">戻る</a>
        </div>
    </div>
</div>

<div style="text-align:right;">
    <form action="{{ route('syukkakanri.store') }}" method="POST">
        @csrf

        <div class="row">
            <div class="col-12 mb-2 mt-2">
                <div class="form-group">
                    <input type="date" name="hiduke" class="form-control" placeholder="日付">
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
                        <option value="{{ $koujyou->id }}" class1="{{ $koujyou->id }}">{{ $koujyou->meisyou }}</option>
                        @endforeach
                    </select>
                    @error('koujyou_id')
                    <span style="color:red;">工場を選択してください</span>
                    @enderror
                </div>
            </div>
            <div class="col-12 mb-2 mt-2">
                <div class="form-group">
                    <select id="syukkasaki_id" name="syukkasaki_id" class="form-select">
                        <option>出荷先を選択してください</option>
                        @foreach ($syukkasakis as $syukkasaki)
                        <option value="{{ $syukkasaki->id }}" class1="{{ $syukkasaki->id }}" class2="{{ $syukkasaki->id }}">{{ $syukkasaki->meisyou }}</option>
                        @endforeach
                    </select>
                    @error('syukkasaki_id')
                    <span style="color:red;">出荷先を選択してください</span>
                    @enderror
                </div>
            </div>
            <div class="col-12 mb-2 mt-2">
                <div class="form-group">
                    <select id="genba_id" name="genba_id" class="form-select">
                        <option>現場を選択してください</opion>
                        @foreach ($genbas as $genba)
                        <option value="{{ $genba->id }}"class2="{{ $genba->syukkasaki_id }}">{{ $genba->meisyou }}</option>
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
                        <option value="{{ $koujyouwatashi->id }}">{{ $koujyouwatashi->meisyou }}</option>
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
                        <option value="{{ $seihinsyubetsu->id }}">{{ $seihinsyubetsu->meisyou }}</option>
                        @endforeach
                    </select>
                    @error('seihinsyubetsu_id')
                    <span style="color:red;">製品種別を選択してください</span>
                    @enderror
                </div>
            </div>
            <div class="col-12 mb-2 mt-2">
                <div class="form-group">
                    <input type="text" name="suuryou" class="form-control" placeholder="打設数量">
                    @error('suuryou')
                    <span style="color:red;">数量を数字で入力してください</span>
                    @enderror
                </div>
            </div>
            <div class="col-12 mb-2 mt-2">
                <div class="form-group">
                    <input type="text" name="motikaerisuuryou" class="form-control" placeholder="持帰数量">
                    @error('motikaerisuuryou')
                    <span style="color:red;">持帰数量を数字で入力してください</span>
                    @enderror
                </div>
            </div>
            <div class="col-12 mb-2 mt-2">
                <div class="form-group">
                    <input type="text" name="pumpkaisuu" class="form-control" placeholder="ポンプ車打設回数">
                    @error('pumpkaisuu')
                    <span style="color:red;">回数を数字で入力してください</span>
                    @enderror
                </div>
            </div>
            <div class="col-12 mb-2 mt-2">
                <div class="form-group">
                    <input type="text" name="pumpsuuryou" class="form-control" placeholder="ポンプ車打設数量">
                </div>
                @error('pumpsuuryou')
                <span style="color:red;">打設数量を数字で入力してください</span>
                @enderror
            </div>
            <div class="col-12 mb-2 mt-2">
                <div class="form-group">
                    <select name="kigou_id" class="form-select">
                        <option>記号を選択してください</otion>
                        @foreach ($kigous as $kigou)
                        <option value="{{ $kigou->id }}">{{ $kigou->meisyou }}</option>
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
                        <option value="{{ $yobikyoudo->id }}">{{ $yobikyoudo->meisyou }}</option>
                        @endforeach
                    </select>
                    @error('yobikyoudo_id')
                    <span style="color:red;">呼び強度を選択してください</span>
                    @enderror
                </div>
            </div>
            <div class="col-12 mb-2 mt-2">
                <div class="form-group">
                    <input type="text" name="cementryou" class="form-control" placeholder="セメント量">
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
                        <option value="{{ $kotsuzaisunpou->id }}">{{ $kotsuzaisunpou->meisyou }}</option>
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
                        <option value="{{ $slump->id }}">{{ $slump->meisyou }}</option>
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
                        <option value="{{ $jissyubetsu->id }}">{{ $jissyubetsu->meisyou }}</option>
                        @endforeach
                    </select>
                    @error('jissyubetsu_id')
                    <span style="color:red;">JIS種別を選択してください</span>
                    @enderror
                </div>
            </div>
            <div class="col-12 mb-2 mt-2">
                <div class="form-group">
                    <input type="file" name="daikoushiken" class="form-control" placeholder="代行試験">
                </div>
            </div>
            <div class="col-12 mb-2 mt-2">
                <div class="form-group">
                    <textarea class="form-control" style="height:100px" name="bikou" placeholder="備考"></textarea>
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
                <button type="submit" class="btn btn-primary w-100">登録</button>
            </div>
        </div>
    </form>
</div>
<script src="{{ asset('js/linkingSelectboxes.js') }}"></script>
@endsection