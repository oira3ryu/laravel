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
        単価マスタ 編集
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
        <form method="post" action="{{ route('tankas.update', $tanka->id) }}">
            @csrf
            @method('PATCH')
            <div class="form-group">
                <label for="syouhin_id">商品</label>
                <select name="syouhin_id" class="form-control">
                    <option>選択してください</option>
                    @foreach ($syouhin as $syouhins)
                    <option class="{{ $syouhins->id }}" value="{{ old('id', $syouhins->id) }}" @if($syouhins->id==$tanka->syouhin_id || $syouhins->id === (int)old('id')) selected @endif>{{ $syouhins->meisyou }}
                    </option>
                    @endforeach
                </select>
                @error('syouhin_id')
                <span style="color:red;">選択してください</span>
                @enderror
            </div>
            <div class="form-group">
                <label for="tanka_syubetsu_id">単価種別</label>
                <select name="tanka_syubetsu_id" class="form-control">
                    <option>選択してください</option>
                    @foreach ($tanka_syubetsu as $tanka_syubetsus)
                    <option class="{{ $tanka_syubetsus->id }}" value="{{ old('id', $tanka_syubetsus->id) }}" @if($tanka_syubetsus->id==$tanka->tanka_syubetsu_id || $tanka_syubetsus->id === (int)old('id')) selected @endif>{{ $tanka_syubetsus->meisyou }}
                    </option>
                    @endforeach
                </select>
                @error('tanka_syubetsu_id')
                <span style="color:red;">選択してください</span>
                @enderror
            </div>
            <div class="form-group">
                <label for="tanka">単価</label>
                <input type="text" class="form-control" name="tanka" value="{{ $tanka->tanka }}" />
            </div>
            <div class="form-group">
                <label for="kaishibi">開始日</label>
                <input type="date" class="form-control" name="kaishibi" value="{{ $tanka->kaishibi }}" />
            </div>
            <div class="form-group">
                <label for="syuuryoubi">終了日</label>
                <input type="date" class="form-control" name="syuuryoubi" value="{{ $tanka->syuuryoubi }}" />
            </div>
            <div class="form-group">
                <label for="hyouji">表示</label>
                <select name="hyouji" class="form-control">
                    <option>選択してください</option>
                    @foreach ($hyouji as $hyoujis)
                    <option class="{{ $hyoujis->id }}" value="{{ old('id', $hyoujis->id) }}" @if($hyoujis->id==$tanka->hyouji || $hyoujis->id === (int)old('id')) selected @endif>{{ $hyoujis->meisyou }}
                    </option>
                    @endforeach
                </select>
                @error('hyouji')
                <span style="color:red;">選択してください</span>
                @enderror
            </div>
            <div class="form-group">
                <label for="narabikae">並替</label>
                <input type="text" class="form-control" name="narabikae" value="{{ $tanka->narabikae }}" />
            </div>
            <div class="form-group">
                <label for="bikou">備考</label>
                <input type="text" class="form-control" name="bikou" value="{{ $tanka->bikou }}" />
            </div>
            <button type="submit" class="btn btn-block btn-danger">更新</button>
            <a href="{{ route('tankas.index')}}" class="btn btn-block btn-info">戻る</a>
    </div>
    </form>
</div>
</div>
@endsection