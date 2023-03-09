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
    基準日マスタ 編集
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
    <form method="post" action="{{ route('kijyunbis.update', $kijyunbi->id) }}">
      <div class="form-group">
        @csrf
        @method('PATCH')
        <label for="hiduke">日付</label>
        <input type="date" class="form-control" name="hiduke" value="{{ $kijyunbi->hiduke }}" />
      </div>
      <div class="form-group">
        <label for="hyouji">表示</label>
        <select name="hyouji" class="form-control">
          <option>選択してください</option>
          @foreach ($hyouji as $hyoujis)
          <option class="{{ $hyoujis->id }}" value="{{ old('id', $hyoujis->id) }}" @if($hyoujis->id==$kijyunbi->hyouji_id || $hyoujis->id === (int)old('id')) selected @endif>{{ $hyoujis->meisyou }}
          </option>
          @endforeach
        </select>
        @error('hyouji')
        <span style="color:red;">選択してください</span>
        @enderror
        <div class="form-group">
          <label for="bikou">備考</label>
          <input type="text" class="form-control" name="bikou" value="{{ $kijyunbi->bikou }}" />
        </div>
        <button type="submit" class="btn btn-block btn-danger">更新</button>
        <a href="{{ route('kijyunbis.index')}}" class="btn btn-block btn-info">戻る</a>
    </form>
  </div>
</div>
@endsection