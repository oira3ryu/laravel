@extends('layout')
@section('content')
<style>
  .push-top {
    margin-top: 50px;
  }
</style>
<div class="push-top">
  @if(session()->get('success'))
  <div class="alert alert-success">
    {{ session()->get('success') }}
  </div><br />
  @endif
  <div class="container text-center">
    <div class="row">
      <div class="col-sm">
        <a href="{{ route('nounyusakis.index')}}" class="btn btn-info btn-sm m-1">納入先</a>
      </div>
      <div class="col-sm">
        <a href="{{ route('genbas.index')}}" class="btn btn-info btn-sm m-1">現場</a>
      </div>
      <div class="col-sm">
        <a href="{{ route('syouhin_syubetsus.index')}}" class="btn btn-info btn-sm m-1">商品種別</a>
      </div>
      <div class="col-sm">
        <a href="{{ route('tanka_syubetsus.index')}}" class="btn btn-info btn-sm m-1">単価種別</a>
      </div>
      <div class="col-sm">
        <a href="{{ route('nebikis.index')}}" class="btn btn-info btn-sm m-1">値引</a>
      </div>
      <div class="col-sm">

      </div>
      <div class="col-sm">

      </div>
      <div class="col-sm">

      </div>
      <div class="col-sm">
        <a href="{{ route('urikakes.index')}}" class="btn btn-info btn-sm m-1">売掛</a>
      </div>
      <div class="col-sm">
        <a href="{{ route('tankas.create')}}" class="btn btn-info btn-sm m-1">追加</a>
      </div>
    </div>
  </div>
  <table class="table">
    <thead>
      <tr class="table-warning">
        <td>ID</td>
        <td>商品</td>
        <td>単価種別</td>
        <td>単価</td>
        <td>開始日</td>
        <td>終了日</td>
        <td>表示</td>
        <td>備考</td>
        <td class="text-center">編集</td>
      </tr>
    </thead>
    <tbody>
      @foreach($tanka as $tankas)
      <tr>
        <td>{{ $tankas->id}}</td>
        @foreach ($syouhin as $syouhins)
        @if($tankas->syouhin_id == $syouhins->id)
        <td>{{ $syouhins->meisyou }}</td>
        @endif
        @endforeach
        @foreach ($tanka_syubetsu as $tanka_syubetsus)
        @if($tankas->tanka_syubetsu_id == $tanka_syubetsus->id)
        <td>{{ $tanka_syubetsus->meisyou }}</td>
        @endif
        @endforeach
        <td>{{ $tankas->tanka }}</td>
        <td>{{ $tankas->kaishibi }}</td>
        <td>{{ $tankas->syuuryoubi }}</td>
        @foreach ($hyouji as $hyoujis)
        @if($tankas->hyouji_id == $hyoujis->id)
        <td>{{ $hyoujis->meisyou }}</td>
        @endif
        @endforeach
        <td>{{ $tankas->bikou }}</td>
        <td class="text-center">
          <a href="{{ route('tankas.edit', $tankas->id)}}" class="btn btn-primary btn-sm">編集</a>
          <form action="{{ route('tankas.destroy', $tankas->id)}}" method="post" style="display: inline-block">
            @csrf
            @method('DELETE')
            <button class="btn btn-danger btn-sm" type="submit">削除</button>
          </form>
        </td>
      </tr>
      @endforeach
    </tbody>
  </table>
  <div>
    @endsection