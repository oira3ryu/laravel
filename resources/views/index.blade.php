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
        @foreach($koujyou as $koujyous)
        <tr>
            <td>{{$koujyous->id}}</td>
            <td>{{$koujyous->meisyou}}</td>
            <td>{{$koujyous->kana}}</td>
            <td>{{$koujyous->hyouji}}</td>
            <td>{{$koujyous->narabikae}}</td>
            <td>{{$koujyous->bikou}}</td>
            <td class="text-center">
                <a href="{{ route('koujyous.edit', $koujyous->id)}}" class="btn btn-primary btn-sm"">編集</a>
                <form action="{{ route('koujyous.destroy', $koujyous->id)}}" method="post" style="display: inline-block">
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
