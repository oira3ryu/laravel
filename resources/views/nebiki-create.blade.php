@extends('layout')
@section('content')
<style>
    .container {
        max-width: 450px;
    }

    .push-top {
        margin-top: 50px;
    }
</style>
<div class="card push-top">
    <div class="card-header">
        値引マスタ 追加
    </div>
    <div class="card-body">
        @if ($errors->any())
        <div class="alert alert-danger">
            <ul>
                @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div><br />
        @endif
        <form method="post" action="{{ route('nebikis.store') }}">
            <div class="form-group">
                @csrf
                <label for="koujyou_id">工場</label>
                <select name="koujyou_id" class="form-control">
                    <option>選択してください</option>
                    @foreach ($koujyou as $koujyous)
                    <option class="form-control" value="koujyou_id" class1="{{ $koujyous->id }}">
                        {{ $koujyous->meisyou }}
                    </option>
                    @endforeach
                </select>
                @error('koujyou_id')
                <span style="color:red;">選択してください</span>
                @enderror
            </div>
            <div class="form-group">
                <label for="nounyusaki_id">納入先</label>
                <select name="nounyusaki_id" class="form-control">
                    <option>選択してください</option>
                    @foreach ($nounyusaki as $nounyusakis)
                    <option class="form-control" value="nounyusaki_id" class1="{{ $nounyusakis->koujyou_id }}">
                        {{ $nounyusakis->meisyou }}
                    </option>
                    @endforeach
                </select>
                @error('nounyusaki_id')
                <span style="color:red;">選択してください</span>
                @enderror
            </div>
            <div class="form-group">
                <label for="tanka_syubetsu_id">単価種別</label>
                <select name="tanka_syubetsu_id" class="form-control">
                    <option>選択してください</option>
                    @foreach ($tanka_syubetsu as $tanka_syubetsus)
                    <option class="form-control" value="tanka_syubetsu_id">
                        {{ $tanka_syubetsus->meisyou }}
                    </option>
                    @endforeach
                </select>
                @error('tanka_syubetsu_id')
                <span style="color:red;">選択してください</span>
                @enderror
            </div>
            <div class="form-group">
                <label for="nebiki">値引</label>
                <input type="text" class="form-control" name="nebiki" />
            </div>
            <div class="form-group">
                <label for="kaishibi">開始日</label>
                <input type="date" class="form-control" name="kaishibi" />
            </div>
            <div class="form-group">
                <label for="syuuryoubi">終了日</label>
                <input type="date" class="form-control" name="syuuryoubi" />
            </div>
            <div class="form-group">
                <label for="hyouji">表示</label>
                <select name="hyouji" class="form-control">
                    <option>選択してください</option>
                    @foreach ($hyouji as $hyoujis)
                    <option class="form-control" value="hyouji">
                        {{ $hyoujis->meisyou }}
                    </option>
                    @endforeach
                </select>
                @error('hyouji')
                <span style="color:red;">選択してください</span>
                @enderror
            </div>
            <div class="form-group">
                <label for="bikou">備考</label>
                <input type="text" class="form-control" name="bikou" />
            </div>
            <button type="submit" class="btn btn-block btn-danger">追加</button>
            <a href="{{ route('nebikis.index')}}" class="btn btn-block btn-info">戻る</a>
        </form>
    </div>
</div>
@endsection