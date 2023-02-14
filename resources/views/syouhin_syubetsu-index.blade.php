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
      
    </div>
    <div class="col-sm">
      <a href="{{ route('urikakes.index')}}" class="btn btn-info btn-sm m-1">売掛</a>
    </div>
    <div class="col-sm">
      <a href="{{ route('syouhin_syubetsus.create')}}" class="btn btn-info btn-sm m-1">追加</a>
    </div>
  </div>
</div>
  <table class="table">
    <thead>
        <tr class="table-warning">
          <td>ID</td>
          <td>名称</td>
          <td>カナ</td>
          <td>表示</td>
          <td>並替</td>
          <td>備考</td>
          <td class="text-center">編集</td>
        </tr>
    </thead>
    <tbody>
        @foreach($syouhin_syubetsu as $syouhin_syubetsus)
        <tr>
            <td>{{$syouhin_syubetsus->id}}</td>
            <td>{{$syouhin_syubetsus->meisyou}}</td>
            <td>{{$syouhin_syubetsus->kana}}</td>
            <td>{{$syouhin_syubetsus->hyouji}}</td>
            <td>{{$syouhin_syubetsus->narabikae}}</td>
            <td>{{$syouhin_syubetsus->bikou}}</td>
            <td class="text-center">
                <a href="{{ route('syouhin_syubetsus.edit', $syouhin_syubetsus->id)}}" class="btn btn-primary btn-sm"">編集</a>
                <form action="{{ route('syouhin_syubetsus.destroy', $syouhin_syubetsus->id)}}" method="post" style="display: inline-block">
                    @csrf
                    @method('DELETE')
                    <button class="btn btn-danger btn-sm"" type="submit">削除</button>
                  </form>
            </td>
        </tr>
        @endforeach
    </tbody>
  </table>
<div>
@endsection
