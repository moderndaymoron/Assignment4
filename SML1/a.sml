 fun zip [] [] = []
 | zip L [] = []
 | zip [] M = []
 | zip (a::L) (b::M) = (a, b)::zip L M;
