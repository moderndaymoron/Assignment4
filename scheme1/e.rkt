(define (Fsplit lis n)
  (cond
   ((eq? n 0)'())
   ((eq? n 1)(cons (car lis) '()))
   (else (cons(car lis)(Fsplit(cdr lis) (- n 1))))
  )
)

(define (Ssplit lis n)
  (cond
    ((empty? lis) '())
    ((eq? n 0) lis)
    (else (Ssplit (cdr lis) (- n 1)))
  )
)


(define (split lis n)
  (list(Fsplit lis n) (Ssplit lis n))
)
