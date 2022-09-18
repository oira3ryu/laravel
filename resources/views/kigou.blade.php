<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <title>kigou</title>
</head>
<body>
  <ul>
    @foreach($data as $d)
      <li>{{$d->meisyou}}</li>
    @endforeach
  </ul>
</body>
</html>
