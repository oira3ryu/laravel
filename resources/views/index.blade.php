@extends('app')

@section('content')
<div class="row">
    <div class="col-lg-12">
        <div class="text-left">
            <h2 style="font-size:1rem;">出荷管理システム</h2>
        </div>
        <div class="text-right">
            @auth
            <a class="btn btn-success" href="{{ route('syukkakanri.create') }}">新規登録</a>
            @endauth
        </div>
    </div>
</div>
<div class="row">
    <div class="col-lg-12">
    @auth
        ログイン者：{{ $user_name }}
    @endauth
    </div>
</div>

<table class="table table-bordered">
    <tr>
        <th>ID</th>
        <th>日付</th>
        <th>工場</th>
        <th>出荷先</th>
        <th>現場</th>
        <th>工場渡し</th>
        <th>製品種別</th>
        <th>数量</th>
        <th>持帰数量</th>
        <th>ポンプ車打設回数</th>
        <th>ポンプ車打設数量</th>
        <th>記号</th>
        <th>呼び強度</th>
        <th>セメント数量</th>
        <th>骨材寸法</th>
        <th>スランプ</th>
        <th>JIS種別</th>
        <th>代行試験</th>
        <th>備考</th>
        <th>削除</th>
        <th>作成</th>
        <th>更新</th>
        <th></th>
        <th></th>
        <th>編集者</th>
    </tr>
    @foreach ($syukkakanris as $syukkakanri)
    <tr>
        <td style="text-align:right">{{ $syukkakanri->id }}</td>
        <td>{{ $syukkakanri->hiduke }}</td>
        <td style="text-align:right">{{ $syukkakanri->koujyou_id }}</td>
        <td style="text-align:right">{{ $syukkakanri->syukkasaki_id }}</td>
        <td style="text-align:left">
        <a class="" href="{{ route('syukkakanri.show',$syukkakanri->id) }}?page_id={{ $page_id }}">{{ $syukkakanri->genba_id }}</a></td>
        <td style="text-align:right">{{ $syukkakanri->koujyouwatashi_id }}</td>
        <td style="text-align:right">{{ $syukkakanri->seihinsyubetsu_id }}</td>
        <td style="text-align:right">{{ $syukkakanri->suuryou }}</td>
        <td style="text-align:right">{{ $syukkakanri->motikaerisuuryou }}</td>
        <td style="text-align:right">{{ $syukkakanri->pumpkaisuu }}</td>
        <td style="text-align:right">{{ $syukkakanri->pumpsuuryou }}</td>
        <td style="text-align:right">{{ $syukkakanri->kigou_id }}</td>
        <td style="text-align:right">{{ $syukkakanri->yobikyoudo_id }}</td>
        <td style="text-align:right">{{ $syukkakanri->cementryou }}</td>
        <td style="text-align:right">{{ $syukkakanri->kotsuzaisunpou_id }}</td>
        <td style="text-align:right">{{ $syukkakanri->slump_id }}</td>
        <td style="text-align:right">{{ $syukkakanri->jissyubetsu_id }}</td>
        <td>{{ $syukkakanri->daikoushiken }}</td>
        <td>{{ $syukkakanri->bikou }}</td>
        <td>{{ $syukkakanri->delete_at }}</td>
        <td>{{ $syukkakanri->created_at }}</td>
        <td>{{ $syukkakanri->updated_at }}</td>
        <td style="text-align:center">
            @auth
            <a class="btn btn-primary" href="{{ route('syukkakanri.edit',$syukkakanri->id) }}">変更</a>
            @endauth
        </td>
        <td style=”text-align:center”>
        @auth
        <form action="{{ route('syukkakanri.destroy', $syukkakanri->id) }}" method="POST">
        @csrf
        @method('DELETE')
            <button type="submit" class="btn btn btn-danger" onclick='return confirm("削除しますか？");'>削除</button>
        </form>
        @endauth
        </td>
        <td>{{ $syukkakanri->user_name }}</td>
    </tr>
    @endforeach
</table>

    <div class="d-flex">
                {!! $syukkakanris->links() !!}
    </div>

@endsection