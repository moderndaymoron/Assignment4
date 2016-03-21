fun reduction f [] = 0
|     reduction f (a::[]) = a
| 	reduction f (a::b::L) = reduction f (f(a,b)::L);
