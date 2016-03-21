fun insert(a, []) = [a:real]
|   insert(a, n::L) = if a < n then a::n::L
                    else n::insert(a, L);

fun insertsort [] = []
|    insertsort (n::L) = insert(n, insertsort L);
