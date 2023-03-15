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

      </div>
      <div class="col-sm">

      </div>
      <div class="col-sm">
        <a href="{{ route('urikakes.index')}}" class="btn btn-info btn-sm m-1">売掛</a>
      </div>
      <div class="col-sm">
        <a href="{{ route('genbas.create')}}" class="btn btn-info btn-sm m-1">追加</a>
      </div>
    </div>
  </div>
  <table class="table table-sm" id="genba" data-pagination="true" data-search="true" data-show-footer="true" data-toggle="table">
    <thead>
      <tr class="table-warning">
        <th class="text-end">ID</th>
        <th class="text-left">工場</th>
        <th class="text-left">納入先</th>
        <th class="text-left">名称</th>
        <th class="text-left">カナ</th>
        <th class="text-center">表示</th>
        <th class="text-left">備考</th>
        <th class="text-center">編集</th>
        <th class="text-center">削除</th>
      </tr>
    </thead>
    <tbody>
      @foreach($genba as $genbas)
      <tr>
        <td class="text-end">{{ $genbas->id }}</td>
        @foreach ($koujyou as $koujyous)
        @if($genbas->koujyou_id == $koujyous->id)
        <td>{{ $koujyous->meisyou }}</td>
        @endif
        @endforeach
        @foreach ($nounyusaki as $nounyusakis)
        @if($genbas->nounyusaki_id == $nounyusakis->id)
        <td>{{ $nounyusakis->meisyou }}</td>
        @endif
        @endforeach
        <td>{{ $genbas->meisyou }}</td>
        <td>{{ $genbas->kana }}</td>
        @foreach ($hyouji as $hyoujis)
        @if($genbas->hyouji_id == $hyoujis->id)
        <td>{{ $hyoujis->meisyou }}</td>
        @endif
        @endforeach
        <td>{{ $genbas->bikou }}</td>
        <td class="text-center">
          <a href="{{ route('genbas.edit', $genbas->id)}}" class="btn btn-primary btn-sm">編集</a>
        </td>
        <td class="text-center">
          <form action=" {{ route('genbas.destroy', $genbas->id)}}" method="post" style="display: inline-block">
            @csrf
            @method('DELETE')
            <button class="btn btn-danger btn-sm" type=" submit">削除</button>
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