select urikakes.genba_id,
			sum(case 
             when syouhins.syouhin_syubetsu_id < 2 then
             ((tankas.tanka + nebikis.nebiki) * urikakes.suuryou)
            else 
             ((tankas.tanka) * urikakes.suuryou)
            end) as kingaku
            from urikakes 
            left join nebikis on nebikis.nounyusaki_id = urikakes.nounyusaki_id
            left join koujyous on koujyous.id = urikakes.koujyou_id
            left join nounyusakis on nounyusakis.id = urikakes.nounyusaki_id
            left join genbas on genbas.id = urikakes.genba_id
            left join syouhins on syouhins.id = urikakes.syouhin_id
            left join tanka_syubetsus on tanka_syubetsus.id = nebikis.tanka_syubetsu_id
            left join tankas on tankas.syouhin_id = urikakes.syouhin_id
            and tankas.tanka_syubetsu_id = nebikis.tanka_syubetsu_id
            and tankas.kaishibi <= urikakes.hiduke
            group by urikakes.genba_id