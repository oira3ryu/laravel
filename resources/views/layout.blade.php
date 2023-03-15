<!DOCTYPE html>
<html>

<head>
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta http-equiv="X-UA-Compatible" content="ie=edge">
   <title>Laravel 9 CRUD App</title>
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
   <link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.21.2/dist/bootstrap-table.min.css">
</head>

<body>
   <div class="container">
      @yield('content')
   </div>
   <script src="https://cdn.jsdelivr.net/npm/jquery/dist/jquery.min.js"></script>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
   <script src="https://unpkg.com/bootstrap-table@1.21.2/dist/bootstrap-table.min.js"></script>

   <script type="text/javascript">
      function removeComma(number) {
         var removed = number.replace(/,/g, '');
         return parseInt(removed, 10);
      }

      var num = '1,000,000';
      var result = removeComma(num);
      console.log(result);

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
               var nounyusakiName = $('select[name="nounyusaki_id" ] option:eq(' + i + ')');
               // 選択した工場と同じクラス名だった場合 
               if (nounyusakiName.attr("class1") === koujyouName) {
                  nounyusakiName.show();
                  // 選択した工場とクラス名が違った場合 
               } else {
                  // 「納入先名を選択して下さい」という要素だった場合
                  if (nounyusakiName.attr("class1") === "msg") {
                     //「納入先名を選択して下さい」を表示させる 
                     nounyusakiName.show();
                     //「納入先名を選択して下さい」を強制的に選択されている状態にする 
                     nounyusakiName.prop('selected', true);
                     // 「納入先名を選択して下さい」という要素でなかった場合    
                  } else {
                     nounyusakiName.hide();
                  }
               }
            }
         })
      });
      $(function() { // 現場が変更されたら発動 
         // 選択されている納入先のクラス名を取得 
         $('select[name="nounyusaki_id" ]').change(function() {
            var nounyusakiName = $('select[name="nounyusaki_id" ] option:selected').attr("class2");
            // 現場名の要素数を取得 
            console.log(nounyusakiName);
            // 現場名の要素数分、for文で回す 
            var count = $('select[name="genba_id" ]').children().length;
            for (var i = 0; i < count; i++) {
               var genbaName = $('select[name="genba_id" ] option:eq(' + i + ')');
               // 選択した納入先と同じクラス名だった場合 
               if (genbaName.attr("class2") === nounyusakiName) {
                  genbaName.show();
                  // 選択した納入先とクラス名が違った場合
               } else {
                  // 「現場名を選択して下さい」という要素だった場合 
                  if (genbaName.attr("class2") === "msg") {
                     //「現場名を選択して下さい」を表示させる 
                     genbaName.show();
                     //「現場名を選択して下さい」を強制的に選択されている状態にする 
                     genbaName.prop('selected', true);
                     // 「現場名を選択して下さい」という要素でなかった場合 
                  } else {
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