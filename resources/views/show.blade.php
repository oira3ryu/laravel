@extends('app')

@section('content')
<div class="row">
    <div class="col-lg-12 margin-tb">
        <div class="pull-left">
            <h2 style="font-size:1rem;">出荷管理詳細</h2>
        </div>
        <div class="pull-right">
            <a class="btn btn-success" href="{{ url('/syukkakanris') }}?page={{ $page_id }}">戻る</a>
        </div>
    </div>
</div>

<div style="text-align:right;">
        <div class="row">
            <div class="col-12 mb-2 mt-2">
                <div class="form-group">
                    {{ $syukkakanri->hiduke }}
                </div>
            </div>
            <div class="col-12 mb-2 mt-2">
                <div class="form-group">
                    @foreach ($koujyous as $koujyou)
                        @if($koujyou->id==$syukkakanri->koujyou_id) {{ $koujyou->meisyou }} @endif
                    @endforeach
                </div>
            </div>
            <div class="col-12 mb-2 mt-2">
                <div class="form-group">
                        @foreach ($syukkasakis as $syukkasaki)
                            @if($syukkasaki->id==$syukkakanri->syukkasaki_id) {{ $syukkasaki->meisyou }} @endif
                        @endforeach
                </div>
            </div>
            <div class="col-12 mb-2 mt-2">
                <div class="form-group">
                        @foreach ($genbas as $genba)
                            @if($genba->id==$syukkakanri->genba_id) {{ $genba->meisyou }} @endif
                        @endforeach
                </div>
            </div>
            <div class="col-12 mb-2 mt-2">
                <div class="form-group">
                        @foreach ($koujyouwatashis as $koujyouwatashi)
                            @if($koujyouwatashi->id==$syukkakanri->koujyouwatashi_id) {{ $koujyouwatashi->meisyou }} @endif
                        @endforeach
                </div>
            </div>
            <div class="col-12 mb-2 mt-2">
                <div class="form-group">
                        @foreach ($seihinsyubetsus as $seihinsyubetsu)
                            @if($seihinsyubetsu->id==$syukkakanri->seihinsyubetsu_id) {{ $seihinsyubetsu->meisyou }} @endif
                        @endforeach
                </div>
            </div>
            <div class="col-12 mb-2 mt-2">
                <div class="form-group">
                    {{ $syukkakanri->suuryou }}
                </div>
            </div>
            <div class="col-12 mb-2 mt-2">
                <div class="form-group">
                    {{ $syukkakanri->motikaerisuuryou }}
                </div>
            </div>
            <div class="col-12 mb-2 mt-2">
                <div class="form-group">
                    {{ $syukkakanri->pumpkaisuu }}
                </div>
            </div>
            <div class="col-12 mb-2 mt-2">
                <div class="form-group">
                    {{ $syukkakanri->pumpsuuryou }}
                </div>
            </div>
            <div class="col-12 mb-2 mt-2">
                <div class="form-group">
                        @foreach ($kigous as $kigou)
                            @if($kigou->id==$syukkakanri->kigou_id) {{ $kigou->meisyou }} @endif
                        @endforeach
                </div>
            </div>
            <div class="col-12 mb-2 mt-2">
                <div class="form-group">
                        @foreach ($yobikyoudos as $yobikyoudo)
                            @if($yobikyoudo->id==$syukkakanri->yobikyoudo_id) {{ $yobikyoudo->meisyou }} @endif
                        @endforeach
                </div>
            </div>
            <div class="col-12 mb-2 mt-2">
                <div class="form-group">
                    {{ $syukkakanri->cementryou }}
                </div>
            </div>
            <div class="col-12 mb-2 mt-2">
                <div class="form-group">
                        @foreach ($kotsuzaisunpous as $kotsuzaisunpou)
                            @if($kotsuzaisunpou->id==$syukkakanri->kotsuzaisunpou_id) {{ $kotsuzaisunpou->meisyou }} @endif
                        @endforeach
                </div>
            </div>
            <div class="col-12 mb-2 mt-2">
                <div class="form-group">
                        @foreach ($slumps as $slump)
                            @if($slump->id==$syukkakanri->slump_id) {{ $slump->meisyou }} @endif
                        @endforeach
                </div>
            </div>
            <div class="col-12 mb-2 mt-2">
                <div class="form-group">
                        @foreach ($jissyubetsus as $jissyubetsu)
                        @if($jissyubetsu->id==$syukkakanri->jissyubetsu_id) {{ $jissyubetsu->meisyou }} @endif
                        @endforeach
                </div>
            </div>
            <div class="col-12 mb-2 mt-2">
                <div class="form-group">
                    {{ $syukkakanri->daikoushiken }}
                </div>
            </div>
            <div class="col-12 mb-2 mt-2">
                <div class="form-group">
                    {{ $syukkakanri->bikou }}
                </div>
            </div>
            <div class="col-12 mb-2 mt-2">
                <button type="submit" class="btn btn-primary w-100">変更</button>
            </div>
        </div>
</div>
@endsection