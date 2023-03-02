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
        売掛 編集
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
        <form method="post" action="{{ route('urikakes.update', $urikake->id) }}">
            @csrf
            @method('PATCH')
            <div class="form-group">
                <label for="hiduke">日付</label>
                <input type="date" class="form-control" name="hiduke" value="{{ $urikake->hiduke }}" />
            </div>
            <div class="form-group">
                <label for="koujyou_id">工場</label>
                <select name="koujyou_id" class="form-control">
                    <option>選択してください</option>
                    @foreach ($koujyou as $koujyous)
                    <option class="{{ $koujyous->id }}" class1="{{ $koujyous->id }}" value="{{ old('id', $koujyous->id) }}" @if($koujyous->id==$urikake->koujyou_id || $koujyous->id === (int)old('id')) selected @endif>{{ $koujyous->meisyou }}
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
                    <option class="{{ $nounyusakis->id }}" class1="{{ $nounyusakis->koujyou_id }}" class2="{{ $nounyusakis->id }}" value="{{ old('id', $nounyusakis->id) }}" @if($nounyusakis->id==$urikake->nounyusaki_id || $nounyusakis->id === (int)old('id')) selected @endif>{{ $nounyusakis->meisyou }}
                    </option>
                    @endforeach
                </select>
                @error('nounyusaki_id')
                <span style="color:red;">選択してください</span>
                @enderror
            </div>
            <div class="form-group">
                <label for="genba_id">現場</label>
                <select name="genba_id" class="form-control">
                    <option>選択してください</option>
                    @foreach ($genba as $genbas)
                    <option class="{{ $genbas->id }}" class2="{{ $genbas->nounyusaki_id }}" value="{{ old('id', $genbas->id) }}" @if($genbas->id==$urikake->genba_id || $genbas->id === (int)old('id')) selected @endif>{{ $genbas->meisyou }}
                    </option>
                    @endforeach
                </select>
                @error('genba_id')
                <span style="color:red;">選択してください</span>
                @enderror
            </div>
            <div class="form-group">
                <label for="syouhin_id">商品</label>
                <select name="syouhin_id" class="form-control">
                    <option>選択してください</option>
                    @foreach ($syouhin as $syouhins)
                    <option class="{{ $syouhins->id }}" value="{{ old('id', $syouhins->id) }}" @if($syouhins->id==$urikake->syouhin_id || $syouhins->id === (int)old('id')) selected @endif>{{ $syouhins->meisyou }}
                    </option>
                    @endforeach
                </select>
                @error('syouhin_id')
                <span style="color:red;">選択してください</span>
                @enderror
            </div>
            <div class="form-group">
                <label for="suuryou">数量</label>
                <input type="text" class="form-control" name="suuryou" value="{{ $urikake->suuryou }}" />
            </div>
            <div class="form-group">
                <label for="hyouji">表示</label>
                <select name="hyouji" class="form-control">
                    <option>選択してください</option>
                    @foreach ($hyouji as $hyoujis)
                    <option class="{{ $hyoujis->id }}" value="{{ old('id', $hyoujis->id) }}" @if($hyoujis->id==$urikake->hyouji || $hyoujis->id === (int)old('id')) selected @endif>{{ $hyoujis->meisyou }}
                    </option>
                    @endforeach
                </select>
                @error('hyouji')
                <span style="color:red;">選択してください</span>
                @enderror
            </div>
            <div class="form-group">
                <label for="bikou">備考</label>
                <input type="text" class="form-control" name="bikou" value="{{ $urikake->bikou }}" />
            </div>
            <button type="submit" class="btn btn-block btn-danger">更新</button>
            <a href="{{ route('urikakes.index')}}" class="btn btn-block btn-info">戻る</a>
    </div>
    </form>
</div>
</div>
@endsection