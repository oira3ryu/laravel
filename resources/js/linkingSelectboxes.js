$(function() {
	// 工場が変更されたら発動
	$('select[name="koujyou_id"]').change(function() {
		
		// 選択されている工場のクラス名を取得
		var koujyouName = $('select[name="koujyou_id"] option:selected').attr("class1");
		console.log(koujyouName);
		
		// 出荷先名の要素数を取得
		var count = $('select[name="syukkasaki_id"]').children().length;
		
		// 出荷先名の要素数分、for文で回す
		for (var i=0; i<count; i++) {
			
			var syukkasaki = $('select[name="syukkasaki_id"] option:eq(' + i + ')');
			
			if(syukkasaki.attr("class1") === koujyouName) {
				// 選択した工場と同じクラス名だった場合
				
				syukkasaki.show();
			}else {
				// 選択した工場とクラス名が違った場合
				
				if(syukkasaki.attr("class1") === "msg") {
					// 「出荷先名を選択して下さい」という要素だった場合
					
						syukkasaki.show();  //「出荷先名を選択して下さい」を表示させる
						syukkasaki.prop('selected',true);  //「出荷先名を選択して下さい」を強制的に選択されている状態にする
				} else {
					// 「出荷先名を選択して下さい」という要素でなかった場合
					
					syukkasaki.hide();
				}
			}
		}
	})	
	// 出荷先が変更されたら発動
	$('select[name="syukkasaki_id"]').change(function() {
		
		// 選択されている出荷先のクラス名を取得
		var syukkasakiName = $('select[name="syukkasaki_id"] option:selected').attr("class2");
		console.log(syukkasakiName);
		
		// 現場名の要素数を取得
		var count = $('select[name="genba_id"]').children().length;
		
		// 現場名の要素数分、for文で回す
		for (var i=0; i<count; i++) {
			
			var genba = $('select[name="genba_id"] option:eq(' + i + ')');
			
			if(genba.attr("class2") === syukkasakiName) {
				// 選択した出荷先と同じクラス名だった場合
				
				genba.show();
			}else {
				// 選択した出荷先とクラス名が違った場合
				
				if(genba.attr("class2") === "msg") {
					// 「現場名を選択して下さい」という要素だった場合
					
						genba.show();  //「現場名を選択して下さい」を表示させる
						genba.prop('selected',true);  //「現場名を選択して下さい」を強制的に選択されている状態にする
				} else {
					// 「現場名を選択して下さい」という要素でなかった場合
					
					genba.hide();
				}
			}
		}
	})
})