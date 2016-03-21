(define (sumList lis)
  (cond
    ((null? lis) 0)
    (else (+ (car lis) (sumList(cdr lis))))
  )
)
