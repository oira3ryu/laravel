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
        単価マスタ 追加
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
        <form method="post" action="{{ route('tankas.store') }}">
            <div class="form-group">
                @csrf
                <label for="syouhin_syubetsu_id">商品種別</label>
                <select name="syouhin_syubetsu_id" class="form-control">
                    <option>選択してください</option>
                    @foreach ($syouhin_syubetsu as $syouhin_syubetsus)
                    <option class="form-control" value="syouhin_syubetsu_id">
                        {{ $syouhin_syubetsus->meisyou }}
                    </option>
                    @endforeach
                </select>
                @error('syouhin_syubetsu_id')
                <span style="color:red;">選択してください</span>
                @enderror
            </div>
            <div class="form-group">
                <label for="syouhin_id">商品</label>
                <select name="syouhin_id" class="form-control">
                    <option>選択してください</option>
                    @foreach ($syouhin as $syouhins)
                    <option class="form-control" value="syouhin_id">
                        {{ $syouhins->meisyou }}
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
                    <option class="form-control" value="tanka_syubetsu">
                        {{ $tanka_syubetsus->meisyou }}
                    </option>
                    @endforeach
                </select>
                @error('tanka_syubetsu_id')
                <span style="color:red;">選択してください</span>
                @enderror
            </div>
            <div class="form-group">
                <label for="tanka">単価</label>
                <input type="text" class="form-control" name="tanka" />
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
                    <option class="form-control" value="hyouji_id">
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
            <a href="{{ route('tankas.index')}}" class="btn btn-block btn-info">戻る</a>
        </form>
    </div>
</div>
@endsection