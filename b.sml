fun greaterThan(L, k) =
= 	if null(L) then []
= 	else if hd(L) <= k then greaterThan(tl(L), k)
= 	else hd(L)::greaterThan(tl(L), k);
