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
    工場マスタ 編集
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
      <form method="post" action="{{ route('koujyous.update', $koujyou->id) }}">
          <div class="form-group">
              @csrf
              @method('PATCH')
              <label for="meisyou">名称</label>
              <input type="text" class="form-control" name="meisyou" value="{{ $koujyou->meisyou }}"/>
          </div>
          <div class="form-group">
              <label for="kana">カナ</label>
              <input type="text" class="form-control" name="kana" value="{{ $koujyou->kana }}"/>
          </div>
          <div class="form-group">
              <label for="hyouji">表示</label>
              <select name="hyouji" class="form-control">
                  <option>選択してください</option>
                  @foreach ($hyouji as $hyoujis)
                      <option class="{{ $hyoujis->id }}" value="{{ old('id', $hyoujis->id) }}" 
                          @if($hyoujis->id==$koujyou->hyouji || $hyoujis->id === (int)old('id')) selected @endif>{{ $hyoujis->meisyou }}
                      </option>
                  @endforeach
              </select>
              @error('hyouji')
              <span style="color:red;">選択してください</span>
              @enderror
          </div>
          <div class="form-group">
              <label for="narabikae">並替</label>
              <input type="text" class="form-control" name="narabikae" value="{{ $koujyou->narabikae }}"/>
          </div>
          <div class="form-group">
              <label for="bikou">備考</label>
              <input type="text" class="form-control" name="bikou" value="{{ $koujyou->bikou }}"/>
          </div>          
          <button type="submit" class="btn btn-block btn-danger">更新</button>
          <a href="{{ route('koujyous.index')}}" class="btn btn-block btn-info">戻る</a>
      </form>
  </div>
</div>
@endsection
