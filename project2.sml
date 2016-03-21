(* 3. SML functions *)

(* a *)
fun zip [] [] = []
|   zip L [] = []
|   zip [] M = []
|   zip (a::L) (b::M) = (a, b)::zip L M;
(* b *)
fun greaterThan [] k = []
|   greaterThan (a::L) k = if a > k then a::greaterThan L k
                           else greaterThan L k;
(* c *)
fun reduction f [] = 0
|   reduction f (a::[]) = a
|   reduction f (a::b::L) = reduction f (f(a,b)::L);

(* d *)
fun getFalseValues f [] = []
|   getFalseValues f (a::L) = if f(a) = false then a::getFalseValues f L
                            else getFalseValues f L;

fun getTrueValues f [] = []
|   getTrueValues f (a::L) = if f(a) = true then a::getTrueValues f L
                            else getTrueValues f L;

fun partition f L = (getTrueValues f L, getFalseValues f L);

(* 4. SML functions *)

(* a *)
fun insert(a, []) = [a:real]
|   insert(a, n::L) = if a < n then a::n::L
                    else n::insert(a, L);

(* b *)
fun insertsort [] = []
|   insertsort (n::L) = insert(n, insertsort L);

(* c *)
fun length [] = 0
|   length (n::L) = 1 + length L;

fun findnth n (a::lis) = if n = 1 then a
                        else findnth (n-1) lis;

fun middle lis =
let
    val l = length lis
    val index = l div 2 + 1;
    in
        findnth index lis
    end;

(* d *)
fun pair ele [] = []
|   pair ele (a::lis) = (ele, a) :: pair ele lis;


fun cartesian [] lis2 = []
|   cartesian (a::lis1) lis2 = pair a lis2 @ cartesian lis1 lis2;

(* e *)
fun mymap f [] = []
| mymap f (a::L) = f(a)::mymap f L;


(* 3. SML Testcases *)

zip [1,2,3] ["a","b","c"];

greaterThan [1,5,3,2,4] 3;

reduction op+ [1,3,5,7,9];

partition Char.isLower [#"P",#"a",#"3",#"%",#"b"];

(* 4. SML Testcases *)

insert (3.3, [1.1, 2.2, 4.4, 5.5]);

insertsort [2.2, 4.4, 5.5, 3.3, 1.1];

middle [1,2,3,4,5]; middle [true,false];

cartesian ["a","b","c"] [1,2];

(mymap (fn x => x*x)) [1,2,3,4];
