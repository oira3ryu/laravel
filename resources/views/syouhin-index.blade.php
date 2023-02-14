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
      
    </div>
    <div class="col-sm">
      <a href="{{ route('urikakes.index')}}" class="btn btn-info btn-sm m-1">売掛</a>
    </div>
    <div class="col-sm">
      <a href="{{ route('syouhins.create')}}" class="btn btn-info btn-sm m-1">追加</a>
    </div>
  </div>
</div>  
  <table class="table">
    <thead>
        <tr class="table-warning">
          <td>ID</td>
          <td>商品種別</td>
          <td>名称</td>
          <td>カナ</td>
          <td>表示</td>
          <td>並替</td>
          <td>備考</td>
          <td class="text-center">編集</td>
        </tr>
    </thead>
    <tbody>
        @foreach($syouhin as $syouhins)
        <tr>
            <td>{{$syouhins->id}}</td>
            <td>{{$syouhins->syouhin_syubetsu_id}}</td>            
            <td>{{$syouhins->meisyou}}</td>
            <td>{{$syouhins->kana}}</td>
            <td>{{$syouhins->hyouji}}</td>
            <td>{{$syouhins->narabikae}}</td>
            <td>{{$syouhins->bikou}}</td>
            <td class="text-center">
                <a href="{{ route('syouhins.edit', $syouhins->id)}}" class="btn btn-primary btn-sm"">編集</a>
                <form action="{{ route('syouhins.destroy', $syouhins->id)}}" method="post" style="display: inline-block">
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