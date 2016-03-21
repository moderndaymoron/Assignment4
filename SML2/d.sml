fun pair ele [] = []
    | pair ele (a::lis) = (ele, a) :: pair ele lis;


fun cartesian [] lis2 = []
| cartesian (a::lis1) lis2 = pair a lis2 @ cartesian lis1 lis2;
