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
        値引マスタ 編集
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
        <form method="post" action="{{ route('nebikis.update', $nebiki->id) }}">
            @csrf
            @method('PATCH')
            <div class="form-group">
                <label for="koujyou_id">工場</label>
                <select name="koujyou_id" class="form-control">
                    <option>選択してください</option>
                    @foreach ($koujyou as $koujyous)
                    <option class="{{ $koujyous->id }}" class1="{{ $koujyous->id }}" value="{{ old('id', $koujyous->id) }}" @if($koujyous->id==$nebiki->koujyou_id || $koujyous->id === (int)old('id')) selected @endif>{{ $koujyous->meisyou }}
                    </option>
                    @endforeach
                </select>
                @error('koujyou')
                <span style="color:red;">選択してください</span>
                @enderror
            </div>
            <div class="form-group">
                <label for="nounyusaki_id">納入先</label>
                <select name="nounyusaki_id" class="form-control">
                    <option>選択してください</option>
                    @foreach ($nounyusaki as $nounyusakis)
                    <option class="{{ $nounyusakis->id }}" class1="{{ $nounyusakis->koujyou_id }}" value="{{ old('id', $nounyusakis->id) }}" @if($nounyusakis->id==$nebiki->nounyusaki_id || $nounyusakis->id === (int)old('id')) selected @endif>{{ $nounyusakis->meisyou }}
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
                    <option class="{{ $tanka_syubetsus->id }}" value="{{ old('id', $tanka_syubetsus->id) }}" @if($tanka_syubetsus->id==$nebiki->tanka_syubetsu_id || $tanka_syubetsus->id === (int)old('id')) selected @endif>{{ $tanka_syubetsus->meisyou }}
                    </option>
                    @endforeach
                </select>
                @error('tanka_syubetsu_id')
                <span style="color:red;">選択してください</span>
                @enderror
            </div>
            <div class="form-group">
                <label for="nebiki">値引</label>
                <input type="text" class="form-control" name="nebiki" value="{{ $nebiki->nebiki }}" />
            </div>
            <div class="form-group">
                <label for="kaishibi">開始日</label>
                <input type="date" class="form-control" name="kaishibi" value="{{ $nebiki->kaishibi }}" />
            </div>
            <div class="form-group">
                <label for="syuuryoubi">終了日</label>
                <input type="date" class="form-control" name="syuuryoubi" value="{{ $nebiki->syuuryoubi }}" />
            </div>
            <div class="form-group">
                <label for="hyouji">表示</label>
                <select name="hyouji" class="form-control">
                    <option>選択してください</option>
                    @foreach ($hyouji as $hyoujis)
                    <option class="{{ $hyoujis->id }}" value="{{ old('id', $hyoujis->id) }}" @if($hyoujis->id==$nebiki->hyouji_id || $hyoujis->id === (int)old('id')) selected @endif>{{ $hyoujis->meisyou }}
                    </option>
                    @endforeach
                </select>
                @error('hyouji')
                <span style="color:red;">選択してください</span>
                @enderror
            </div>
            <div class="form-group">
                <label for="bikou">備考</label>
                <input type="text" class="form-control" name="bikou" value="{{ $nebiki->bikou }}" />
            </div>
            <button type="submit" class="btn btn-block btn-danger">更新</button>
            <a href="{{ route('nebikis.index')}}" class="btn btn-block btn-info">戻る</a>
    </div>
    </form>
</div>
</div>
@endsection