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
    納入先マスタ 追加
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
    <form method="post" action="{{ route('nounyusakis.store') }}">
      <div class="form-group">
        @csrf
        <label for="koujyou_id">工場</label>
        <select name="koujyou_id" class="form-control">
          <option>選択してください</option>
          @foreach ($koujyou as $koujyous)
          <option class="form-control" value="koujyou_id">
            {{ $koujyous->meisyou }}
          </option>
          @endforeach
        </select>
        @error('koujyou')
        <span style="color:red;">選択してください</span>
        @enderror
      </div>
      <div class="form-group">
        <label for="meisyou">名称</label>
        <input type="text" class="form-control" name="meisyou" />
      </div>
      <div class="form-group">
        <label for="kana">カナ</label>
        <input type="text" class="form-control" name="kana" />
      </div>
      <div class="form-group">
        <label for="hyouji_id">表示</label>
        <select name="hyouji_id" class="form-control">
          <option>選択してください</option>
          @foreach ($hyouji as $hyoujis)
          <option class="form-control" value="hyouji_id">
            {{ $hyoujis->meisyou }}
          </option>
          @endforeach
        </select>
        @error('hyouji_id')
        <span style="color:red;">選択してください</span>
        @enderror
      </div>
      <div class="form-group">
        <label for="bikou">備考</label>
        <input type="text" class="form-control" name="bikou" />
      </div>
      <button type="submit" class="btn btn-block btn-danger">追加</button>
      <a href="{{ route('nounyusakis.index')}}" class="btn btn-block btn-info">戻る</a>
    </form>
  </div>
</div>
@endsection