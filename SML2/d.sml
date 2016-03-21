fun pair ele [] = []
    | pair ele (a::lis) = (ele, a) :: pair ele lis;  


fun cartesian lis1 lis2 = map(pair hd o lis1) lis2;