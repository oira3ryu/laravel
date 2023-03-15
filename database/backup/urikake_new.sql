WITH r as (
SELECT 
urikakes.id,
urikakes.hiduke, 
urikakes.koujyou_id,
koujyous.meisyou as koujyou_mei,
urikakes.nounyusaki_id,
nounyusakis.meisyou as nounyusaki_mei,
urikakes.genba_id,
genbas.meisyou as genba_mei,
urikakes.syouhin_id,
syouhins.meisyou as syouhin_mei,
syouhins.syouhin_syubetsu_id,
syouhin_syubetsus.meisyou as syouhin_syubetsu_mei,
tankas.kaishibi, 
tankas.tanka, 
urikakes.suuryou,
case 
when syouhins.syouhin_syubetsu_id <= 2 then
 ((tankas.tanka + nebikis.nebiki) * urikakes.suuryou)
else 
 ((tankas.tanka) * urikakes.suuryou)
end as kingaku,
urikakes.hyouji_id,
hyoujis.meisyou as hyouji_mei,
urikakes.bikou,
nebikis.tanka_syubetsu_id FROM urikakes 
LEFT JOIN tankas ON urikakes.syouhin_id = tankas.syouhin_id
LEFT JOIN tanka_syubetsus ON tankas.tanka_syubetsu_id = tanka_syubetsus.id
LEFT JOIN nounyusakis ON urikakes.nounyusaki_id = nounyusakis.id
LEFT JOIN koujyous ON urikakes.koujyou_id = koujyous.id
LEFT JOIN genbas ON urikakes.genba_id = genbas.id
LEFT JOIN syouhins ON urikakes.syouhin_id = syouhins.id
LEFT JOIN syouhin_syubetsus ON syouhins.syouhin_syubetsu_id = syouhin_syubetsus.id
LEFT JOIN hyoujis ON urikakes.hyouji_id = hyoujis.id
RIGHT JOIN nebikis ON urikakes.nounyusaki_id = nebikis.nounyusaki_id AND nounyusakis.id = nebikis.nounyusaki_id AND nebikis.tanka_syubetsu_id = tanka_syubetsus.id
WHERE tankas.kaishibi >= 
(SELECT MAX(tankas.kaishibi) FROM tankas, tanka_syubetsus, urikakes, nebikis 
 WHERE tankas.syouhin_id = urikakes.syouhin_id 
 AND tankas.tanka_syubetsu_id = nebikis.tanka_syubetsu_id
AND tanka_syubetsus.id = nebikis.tanka_syubetsu_id)
	)
	SELECT 
	hiduke,
	nounyusaki_id,
	genba_id,
	syouhin_syubetsu_id,
	syouhin_id,
	MAX(nounyusaki_mei) as nounyusaki_mei, 
	CASE WHEN syouhin_syubetsu_id = 2 THEN
	SUM(suuryou)
	END as suuryou, 
	SUM(kingaku) as kingaku 
	FROM r 
	GROUP BY GROUPING SETS(
		(hiduke, nounyusaki_id,genba_id,syouhin_syubetsu_id, syouhin_id),(genba_id),()
	) 
	ORDER BY 
	hiduke,
	nounyusaki_id,
	genba_id,
	syouhin_syubetsu_id
	;