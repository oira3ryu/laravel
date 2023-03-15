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
    基準日マスタ 追加
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
    <form method="post" action="{{ route('kijyunbis.store') }}">
      <div class="form-group">
        @csrf
        <label for="hiduke">日付</label>
        <input type="date" class="form-control" name="hiduke" />
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
      <a href="{{ route('kijyunbis.index')}}" class="btn btn-block btn-info">戻る</a>
    </form>
  </div>
</div>
@endsection