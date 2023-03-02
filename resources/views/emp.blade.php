@extends('layouts.app')

@section('content')
<div class="container">
  この下にコンポーネントが表示されます
  <bootstrap-table-component models='@json($models)' />
</div>
@endsection