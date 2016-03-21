fun mymap f [] = []
| mymap f (a::L) = f(a)::mymap f L;
