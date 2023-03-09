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
        現場マスタ 追加
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
        <form method="post" action="{{ route('genbas.store') }}">
            <div class="form-group @if(!empty($errors->first('koujyou_id'))) has-error @endif">
                @csrf
                <label for="koujyou_id">工場</label>
                <select name="koujyou_id" class="form-control">
                    <option>選択してください</option>
                    @foreach ($koujyou as $koujyous)
                    <option class="form-control" value="{{ $koujyous->id }}" class1="{{ $koujyous->id }}">
                        {{ $koujyous->meisyou }}
                    </option>
                    @endforeach
                </select>
                @error('koujyou')
                <span style="color:red;">選択してください</span>
                @enderror
            </div>
            <div class="form-group @if(!empty($errors->first('nounyusaki_id'))) has-error @endif">
                <label for="nounyusaki_id">納入先</label>
                <select name="nounyusaki_id" class="form-control">
                    <option>選択してください</option>
                    @foreach ($nounyusaki as $nounyusakis)
                    <option class="form-control" value="{{ $nounyusakis->id }}" class1="{{ $nounyusakis->koujyou_id }}" class2="{{ $nounyusakis->id }}">
                        {{ $nounyusakis->meisyou }}
                    </option>
                    @endforeach
                </select>
                @error('nounyusaki')
                <span style="color:red;">選択してください</span>
                @enderror
            </div>
            <div class="form-group @if(!empty($errors->first('meisyou'))) has-error @endif">
                <label for="meisyou">名称</label>
                <input type="text" value="{{old('meisyou')}}" class="form-control" name="meisyou" />
                <span class="help-block">{{$errors->first('meisyou')}}</span>
            </div>
            <div class="form-group @if(!empty($errors->first('kana'))) has-error @endif">
                <label for="kana">カナ</label>
                <input type="text" value="{{old('kana')}}" class="form-control" name="kana" />
                <span class="help-block">{{$errors->first('kana')}}</span>
            </div>
            <div class="form-group @if(!empty($errors->first('hyouji_id'))) has-error @endif">
                <label for="hyouji_id">表示</label>
                <select name="hyouji_id" class="form-control">
                    <option>選択してください</option>
                    @foreach ($hyouji as $hyoujis)
                    <option class="form-control" value="{{ $hyouji->id }}">
                        {{ $hyoujis->meisyou }}
                    </option>
                    @endforeach
                </select>
                @error('hyouji')
                <span style="color:red;">選択してください</span>
                @enderror
            </div>
            <div class="form-group @if(!empty($errors->first('bikou'))) has-error @endif">
                <label for="bikou">備考</label>
                <input type="text" value="{{old('bikou')}}" class="form-control" name="bikou" />
                <span class="help-block">{{$errors->first('bikou')}}</span>
            </div>
            <button type="submit" class="btn btn-block btn-danger">追加</button>
            <a href="{{ route('genbas.index')}}" class="btn btn-block btn-info">戻る</a>
        </form>
    </div>
</div>
@endsection