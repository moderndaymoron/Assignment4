fun length [] = 0
    | length (n::L) = 1 + length L;

fun findnth n (a::lis) = if n = 1 then a
                        else findnth (n-1) lis;

fun middle lis =
let
    val l = length lis
    val index = l div 2 + 1;
    in
        findnth index lis
    end;
