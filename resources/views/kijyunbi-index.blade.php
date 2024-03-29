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
      <div class="col-lg">
        <a href="{{ route('koujyous.index')}}" class="btn btn-info btn-sm m-1">工場</a>
      </div>
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
        <a href="{{ route('syouhins.index')}}" class="btn btn-info btn-sm m-1">商品</a>
      </div>
      <div class="col-sm">
        <a href="{{ route('tanka_syubetsus.index')}}" class="btn btn-info btn-sm m-1">単価種別</a>
      </div>
      <div class="col-sm">
        <a href="{{ route('tankas.index')}}" class="btn btn-info btn-sm m-1">単価</a>
      </div>
      <div class="col-sm">
        <a href="{{ route('nebikis.index')}}" class="btn btn-info btn-sm m-1">値引</a>
      </div>
      <div class="col-sm">
        <a href="{{ route('kijyunbis.index')}}" class="btn btn-info btn-sm m-1">基準日</a>
      </div>
      <div class="col-sm">
        <a href="{{ route('urikakes.index')}}" class="btn btn-info btn-sm m-1">売掛</a>
      </div>
      <div class="col-sm">
        <a href="{{ route('kijyunbis.create')}}" class="btn btn-info btn-sm m-1">追加</a>
      </div>
    </div>
  </div>
  <table class="table">
    <thead>
      <tr class="table-warning">
        <th class="text-end">ID</th>
        <th class="text-center">基準日</th>
        <th class="text-center">表示</th>
        <th class="text-left">備考</th>
      </tr>
    </thead>
    <tbody>
      @foreach($kijyunbi as $kijyunbis)
      <tr>
        <td class="text-end">{{$kijyunbis->id}}</td>
        <td class="text-center">{{$kijyunbis->hiduke}}</td>
        @foreach ($hyouji as $hyoujis)
        @if($kijyunbis->hyouji_id == $hyoujis->id)
        <td>{{ $hyoujis->meisyou }}</td>
        @endif
        @endforeach
        <td>{{$kijyunbis->bikou}}</td>
        <td class="text-center">
          <a href="{{ route('kijyunbis.edit', $kijyunbis->id)}}" class="btn btn-primary btn-sm">編集</a>
        </td>
        <td class="text-center">
          <form action="{{ route('kijyunbis.destroy', $kijyunbis->id)}}" method="post" style="display: inline-block">
            @csrf
            @method('DELETE')
            <button class="btn btn-danger btn-sm" type="submit">削除</button>
          </form>
        </td>
      </tr>
      @endforeach
    </tbody>
    <tfoot>
      <tr class="table-warning">
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
    </tfoot>
  </table>
  <div>
    @endsection