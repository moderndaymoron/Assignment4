fun insert(a, []) = [a:real]
|   insert(a, n::L) = if a < n then a::n::L
                    else n::insert(a, L);
