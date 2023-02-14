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
    表示マスタ 編集
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
      <form method="post" action="{{ route('hyoujis.update', $hyouji->id) }}">
          <div class="form-group">
              @csrf
              @method('PATCH')
              <label for="meisyou">名称</label>
              <input type="text" class="form-control" name="meisyou" value="{{ $hyouji->meisyou }}"/>
          </div>
          <div class="form-group">
              <label for="kana">カナ</label>
              <input type="text" class="form-control" name="kana" value="{{ $hyouji->kana }}"/>
          </div>
          <div class="form-group">
              <label for="hyouji">表示</label>
              <input type="text" class="form-control" name="hyouji" value="{{ $hyouji->hyouji }}"/>
          </div>
          <div class="form-group">
              <label for="narabikae">並替</label>
              <input type="text" class="form-control" name="narabikae" value="{{ $hyouji->narabikae }}"/>
          </div>
          <div class="form-group">
              <label for="bikou">備考</label>
              <input type="text" class="form-control" name="bikou" value="{{ $hyouji->bikou }}"/>
          </div>          
          <button type="submit" class="btn btn-block btn-danger">更新</button>
          <a href="{{ route('hyoujis.index')}}" class="btn btn-block btn-info">戻る</a>
      </form>
  </div>
</div>
@endsection
