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
    表示マスタ 追加
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
    <form method="post" action="{{ route('hyoujis.store') }}">
      <div class="form-group">
        @csrf
        <label for="meisyou">名称</label>
        <input type="text" class="form-control" name="meisyou" />
      </div>
      <div class="form-group">
        <label for="kana">カナ</label>
        <input type="text" class="form-control" name="kana" />
      </div>
      <div class="form-group">
        <label for="hyouji_id">表示</label>
        <input type="text" class="form-control" name="hyouji_id" />
      </div>
      <div class="form-group">
        <label for="bikou">備考</label>
        <input type="text" class="form-control" name="bikou" />
      </div>
      <button type="submit" class="btn btn-block btn-danger">追加</button>
      <a href="{{ route('hyoujis.index')}}" class="btn btn-block btn-info">戻る</a>
    </form>
  </div>
</div>
@endsection