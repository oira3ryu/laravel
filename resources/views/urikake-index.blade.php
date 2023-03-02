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
      <!--       <div class="col-sm">
        <form action="{{ route('urikakes.index') }}" method="GET">
          <input type="text" name="keyword" id="keyword" value="{{ $keyword }}">
          <input type="submit" class="btn btn-info btn-sm m-1" value="検索">
          <input type="button" class="btn btn-info btn-sm m-1" name="reset" value="クリア" onclick="clearKeyword()">
        </form>
      </div> -->
      <div class="col-sm">
        <a href="{{ route('urikakes.create')}}" class="btn btn-info btn-sm m-1">追加</a>
      </div>
    </div>
  </div>
  <table class="table table-sm" id="urikake" data-pagination="true" data-search="true" data-show-footer="true" data-toggle="table">
    <thead>
      <tr class="table-warning">
        <th>ID</th>
        <th data-sortable="true">日付</th>
        <th>工場</th>
        <th>納入先</th>
        <th>現場</th>
        <th>商品</th>
        <th>単価</th>
        <th>数量</th>
        <th>金額</th>
        <th>表示</th>
        <th>備考</th>
        <th class="text-center">編集</th>
        <th>削除</th>
      </tr>
    </thead>
    <tbody>
      @foreach($urikake as $urikakes)
      <tr>
        <td>{{ $urikakes->id }}</td>
        <td>{{ $urikakes->hiduke }}</td>
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
        <td>{{ number_format($urikakes->suuryou,1) }}</td>
        <td class="text-right" class1="kingaku">{{number_format($urikakes->kingaku)}}</td>
        @foreach ($hyouji as $hyoujis)
        @if($urikakes->hyouji == $hyoujis->id)
        <td>{{ $hyoujis->meisyou }}</td>
        @endif
        @endforeach
        <td>{{ $urikakes->bikou }}</td>
        <td class="text-center">
          <a href="{{ route('urikakes.edit', $urikakes->id)}}" class="btn btn-primary btn-sm">編集</a>
        </td>
        <td>
          <form action=" {{ route('urikakes.destroy', $urikakes->id)}}" method="post" style="display: inline-block">
            @csrf
            @method('DELETE')
            <button class="btn btn-danger btn-sm" type=" submit">削除</button>
          </form>
        </td>
      </tr>
      @endforeach
    </tbody>
    <th data-field="Amount" data-searchable="true" data-class="tdDetails" data-footer-formatter="TotalFormatter">Amount</th>
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
    <p class="sum_kingaku">合計：0円</p>
  </div>
  <!--   {{-- Pagination --}}
  <div class="d-flex justify-content-center">
    {!! $urikake->appends([
    'urikakes.hiduke' => $keyword,
    'koujyous.meisyou' => $keyword,
    'nounyusakis.meisyou' => $keyword,
    'genbas.meisyou' => $keyword,
    'syouhins.meisyou' => $keyword
    ])->links() !!}
  </div> -->
  <div>

    @endsection