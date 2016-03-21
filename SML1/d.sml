fun getFalseValues f [] = []
|   getFalseValues f (a::L) = if f(a) = false then a::getFalseValues f L
                            else getFalseValues f L;

fun getTrueValues f [] = []
|   getTrueValues f (a::L) = if f(a) = true then a::getTrueValues f L
                            else getTrueValues f L;

fun partition f L = (getTrueValues f L, getFalseValues f L);
