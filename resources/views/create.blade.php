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
    Add Koujyou
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
      <form method="post" action="{{ route('koujyous.store') }}">
          <div class="form-group">
              @csrf
              <label for="meisyou">名称</label>
              <input type="text" class="form-control" name="meisyou"/>
          </div>
          <div class="form-group">
              <label for="kana">カナ</label>
              <input type="text" class="form-control" name="kana"/>
          </div>
          <div class="form-group">
              <label for="hyouji">表示</label>
              <input type="text" class="form-control" name="hyouji"/>
          </div>
          <div class="form-group">
              <label for="narabikae">並替</label>
              <input type="text" class="form-control" name="narabikae"/>
          </div>
          <div class="form-group">
              <label for="bikou">備考</label>
              <input type="text" class="form-control" name="bikou"/>
          </div>
          <button type="submit" class="btn btn-block btn-danger">Create Koujyou</button>
      </form>
  </div>
</div>
@endsection
