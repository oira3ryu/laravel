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
        <a href="{{ route('syouhin_syubetsus.create')}}" class="btn btn-info btn-sm m-1">追加</a>
      </div>
    </div>
  </div>
  <table class="table table-sm" id="syouhin_syubetsu" data-pagination="true" data-search="true" data-show-footer="true" data-toggle="table">
    <thead>
      <tr class="table-warning">
        <th class="text-end">ID</th>
        <th class="text-left">名称</th>
        <th class="text-left">カナ</th>
        <th class="text-center">表示</th>
        <th class="text-left">備考</th>
        <th class="text-center">編集</th>
        <th class="text-center">削除</th>         
      </tr>
    </thead>
    <tbody>
      @foreach($syouhin_syubetsu as $syouhin_syubetsus)
      <tr>
        <td class="text-end">{{$syouhin_syubetsus->id}}</td>
        <td>{{$syouhin_syubetsus->meisyou}}</td>
        <td>{{$syouhin_syubetsus->kana}}</td>
        @foreach ($hyouji as $hyoujis)
        @if($syouhin_syubetsus->hyouji_id == $hyoujis->id)
        <td>{{ $hyoujis->meisyou }}</td>
        @endif
        @endforeach
        <td>{{$syouhin_syubetsus->bikou}}</td>
        <td class="text-center">
          <a href="{{ route('syouhin_syubetsus.edit', $syouhin_syubetsus->id)}}" class="btn btn-primary btn-sm"">編集</a>
        </td>
        <td class="text-center">
          <form action=" {{ route('syouhin_syubetsus.destroy', $syouhin_syubetsus->id)}}" method="post" style="display: inline-block">
            @csrf
            @method('DELETE')
            <button class="btn btn-danger btn-sm"" type=" submit">削除</button>
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