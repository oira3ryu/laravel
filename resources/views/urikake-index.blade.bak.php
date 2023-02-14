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

      </div>
      <div class="col-sm">

      </div>
      <div class="col-sm">

      </div>
      <div class="col-sm">
        <a href="{{ route('urikakes.create')}}" class="btn btn-info btn-sm m-1">追加</a>
      </div>
    </div>
  </div>
  <table class="table table-condensed">
    <thead>
      <tr class="table-warning">
        <td>ID</td>
        <td>日付</td>
        <td>工場</td>
        <td>納入先</td>
        <td>現場</td>
        <td>商品</td>
        <td>単価</td>
        <td>数量</td>
        <td>金額</td>
        <td>表示</td>
        <td>並替</td>
        <td>備考</td>
        <td class="text-center">編集</td>
      </tr>
    </thead>
    <tbody>
      @foreach($urikake as $urikakes)
      <tr>
        <td>{{$urikakes->id}}</td>
        <td>{{$urikakes->hiduke}}</td>
        @foreach ($koujyou as $koujyous)
        @if($urikakes->koujyou_id == $koujyous->id)
        <td>{{ $koujyous->meisyou }}</td>
        @endif
        @endforeach
        @foreach ($nounyusaki as $nounyusakis)
        @if($urikakes->nounyusaki_id == $nounyusakis->id)
        <td>{{ $nounyusakis->meisyou }}</td>
        @endif
        @endforeach
        @foreach ($genba as $genbas)
        @if($urikakes->genba_id == $genbas->id)
        <td>{{ $genbas->meisyou }}</td>
        @endif
        @endforeach
        @foreach ($syouhin as $syouhins)
        @if($urikakes->syouhin_id == $syouhins->id)
        <td>{{ $syouhins->meisyou }}</td>
        @endif
        @endforeach
        <td class="text-right">{{number_format($urikakes->tanka)}}</td>
        <td>{{$urikakes->suuryou}}</td>
        <td class="text-right">{{number_format($urikakes->kingaku)}}</td>
        @foreach ($hyouji as $hyoujis)
        @if($urikakes->hyouji == $hyoujis->id)
        <td>{{ $hyoujis->meisyou }}</td>
        @endif
        @endforeach
        <td>{{$urikakes->narabikae}}</td>
        <td>{{$urikakes->bikou}}</td>
        <td class="text-center">
          <a href="{{ route('urikakes.edit', $urikakes->id)}}" class="btn btn-primary btn-sm">編集</a>
          <form action=" {{ route('urikakes.destroy', $urikakes->id)}}" method="post" style="display: inline-block">
            @csrf
            @method('DELETE')
            <button class="btn btn-danger btn-sm" type=" submit">削除</button>
          </form>
        </td>
      </tr>
      @endforeach
    </tbody>
  </table>
  <div>
    @endsection