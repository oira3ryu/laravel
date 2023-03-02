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
        売掛 追加
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
        <form method="post" action="{{ route('urikakes.store') }}">
            <div class="form-group @if(!empty($errors->first('hiduke'))) has-error @endif">
                @csrf
                <label for="hiduke">日付</label>
                <input type="date" class="form-control" name="hiduke" />
                <span class="help-block">{{$errors->first('hiduke')}}</span>
            </div>
            <div class="form-group @if(!empty($errors->first('koujyou_id'))) has-error @endif">
                <label for="koujyou_id">工場</label>
                <select name="koujyou_id" class="form-control">
                    <option>選択してください</option>
                    @foreach ($koujyou as $koujyous)
                    <option class="form-control" value="{{ $koujyous->id }}" class1="{{ $koujyous->id }}">
                        {{ $koujyous->meisyou }}
                    </option>
                    @endforeach
                </select>
                @error('koujyou_id')
                <span style=" color:red;">選択してください</span>
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
                @error('nounyusaki_id')
                <span style=" color:red;">選択してください</span>
                @enderror
            </div>
            <div class="form-group @if(!empty($errors->first('genba_id'))) has-error @endif">
                <label for="genba_id">現場</label>
                <select name="genba_id" class="form-control">
                    <option>選択してください</option>
                    @foreach ($genba as $genbas)
                    <option class="form-control" value="{{ $genbas->id }}" class2="{{ $genbas->nounyusaki_id }}">
                        {{ $genbas->meisyou }}
                    </option>
                    @endforeach
                </select>
                @error('genba_id')
                <span style="color:red;">選択してください</span>
                @enderror
            </div>
            <div class="form-group @if(!empty($errors->first('syouhin_id'))) has-error @endif">
                <label for="syouhin_id">商品</label>
                <select name="syouhin_id" class="form-control">
                    <option>選択してください</option>
                    @foreach ($syouhin as $syouhins)
                    <option class="form-control" value="{{ $syouhins->id }}">
                        {{ $syouhins->meisyou }}
                    </option>
                    @endforeach
                </select>
                @error('syouhin_id')
                <span style="color:red;">選択してください</span>
                @enderror
            </div>
            <div class="form-group @if(!empty($errors->first('suuryou'))) has-error @endif">
                <label for="suuryou">数量</label>
                <input type="text" value="{{old('suuryou')}}" class="form-control" name="suuryou" />
                <span class="help-block">{{$errors->first('suuryou')}}</span>
            </div>
            <div class="form-group @if(!empty($errors->first('hyouji'))) has-error @endif">
                <label for="hyouji">表示</label>
                <select name="hyouji" class="form-control">
                    <option>選択してください</option>
                    @foreach ($hyouji as $hyoujis)
                    <option class="form-control" value="{{ $hyoujis->hyouji }}">
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
            <a href="{{ route('urikakes.index')}}" class="btn btn-block btn-info">戻る</a>
        </form>
    </div>
</div>
@endsection