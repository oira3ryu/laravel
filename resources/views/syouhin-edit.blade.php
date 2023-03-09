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
    商品マスタ 編集
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
    <form method="post" action="{{ route('syouhins.update', $syouhin->id) }}">
      @csrf
      @method('PATCH')
      <div class="form-group">
        <label for="syouhin_syubetsu_id">商品種別</label>
        <select name="syouhin_syubetsu_id" class="form-control">
          <option>選択してください</option>
          @foreach ($syouhin_syubetsu as $syouhin_syubetsus)
          <option class="{{ $syouhin_syubetsus->id }}" class1="{{ $syouhin_syubetsus->id }}" value="{{ old('id', $syouhin_syubetsus->id) }}" @if($syouhin_syubetsus->id==$syouhin->syouhin_syubetsu_id || $syouhin_syubetsus->id === (int)old('id')) selected @endif>{{ $syouhin_syubetsus->meisyou }}
          </option>
          @endforeach
        </select>
        @error('syouhin_syubetsu')
        <span style="color:red;">選択してください</span>
        @enderror
      </div>
      <div class="form-group">
        <label for="meisyou">名称</label>
        <input type="text" class="form-control" name="meisyou" value="{{ $syouhin->meisyou }}" />
      </div>
      <div class="form-group">
        <label for="kana">カナ</label>
        <input type="text" class="form-control" name="kana" value="{{ $syouhin->kana }}" />
      </div>
      <div class="form-group">
        <label for="hyouji">表示</label>
        <select name="hyouji" class="form-control">
          <option>選択してください</option>
          @foreach ($hyouji as $hyoujis)
          <option class="{{ $hyoujis->id }}" value="{{ old('id', $hyoujis->id) }}" @if($hyoujis->id==$syouhin->hyouji_id || $hyoujis->id === (int)old('id')) selected @endif>{{ $hyoujis->meisyou }}
          </option>
          @endforeach
        </select>
        @error('hyouji')
        <span style="color:red;">選択してください</span>
        @enderror
      </div>
      <div class="form-group">
        <label for="bikou">備考</label>
        <input type="text" class="form-control" name="bikou" value="{{ $syouhin->bikou }}" />
      </div>
      <button type="submit" class="btn btn-block btn-danger">更新</button>
      <a href="{{ route('syouhins.index')}}" class="btn btn-block btn-info">戻る</a>
    </form>
  </div>
</div>
@endsection