fun split (l) = 
    case l of 
        [] => ([] , [])
      | [x] => ([] , [x])
      | x :: y => let val (l1 , l2) = split ys
                        in (x :: l1 , y :: l2)
                        end;