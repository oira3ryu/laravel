<!DOCTYPE html>
<html>

<head>
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta http-equiv="X-UA-Compatible" content="ie=edge">
   <title>Laravel 9 CRUD App</title>
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
</head>

<body>
   <div class="container">
      @yield('content')
   </div>
   <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
   <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
   <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" type="text/js"></script>
   <script>
      $(function() {

         // 工場が変更されたら発動
         $('select[name="koujyou_id"]').change(function() {

            // 選択されている工場のクラス名を取得
            var koujyouName = $('select[name="koujyou_id"] option:selected').attr("class1");
            console.log(koujyouName);

            // 納入先名の要素数を取得
            var count = $('select[name="nounyusaki_id"]').children().length;

            // 納入先名の要素数分、for文で回す
            for (var i = 0; i < count; i++) {

               var nounyusakiName = $('select[name="nounyusaki_id"] option:eq(' + i + ')');

               if (nounyusakiName.attr("class1") === koujyouName) {
                  // 選択した工場と同じクラス名だった場合

                  nounyusakiName.show();
               } else {
                  // 選択した工場とクラス名が違った場合

                  if (nounyusakiName.attr("class1") === "msg") {
                     // 「納入先名を選択して下さい」という要素だった場合

                     nounyusakiName.show(); //「納入先名を選択して下さい」を表示させる
                     nounyusakiName.prop('selected', true); //「納入先名を選択して下さい」を強制的に選択されている状態にする
                  } else {
                     // 「納入先名を選択して下さい」という要素でなかった場合

                     nounyusakiName.hide();
                  }
               }
            }
         })
      });

      $(function() {
         // 現場が変更されたら発動
         $('select[name="nounyusaki_id"]').change(function() {

            // 選択されている納入先のクラス名を取得
            var nounyusakiName = $('select[name="nounyusaki_id"] option:selected').attr("class2");
            console.log(nounyusakiName);

            // 現場名の要素数を取得
            var count = $('select[name="genba_id"]').children().length;

            // 現場名の要素数分、for文で回す
            for (var i = 0; i < count; i++) {

               var genbaName = $('select[name="genba_id"] option:eq(' + i + ')');

               if (genbaName.attr("class2") === nounyusakiName) {
                  // 選択した納入先と同じクラス名だった場合

                  genbaName.show();
               } else {
                  // 選択した納入先とクラス名が違った場合

                  if (genbaName.attr("class2") === "msg") {
                     // 「現場名を選択して下さい」という要素だった場合

                     genbaName.show(); //「現場名を選択して下さい」を表示させる
                     genbaName.prop('selected', true); //「現場名を選択して下さい」を強制的に選択されている状態にする
                  } else {
                     // 「現場名を選択して下さい」という要素でなかった場合

                     genbaName.hide();
                  }
               }
            }
         })


      });

      function clearKeyword() {
   	var textForm = document.getElementById("keyword");   
        textForm.value = '';
      };
   </script>
</body>

</html>