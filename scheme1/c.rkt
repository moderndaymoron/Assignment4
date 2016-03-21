(define (compress lis)
  (cond
    ((null? lis) '())
    ((null? (cdr lis)) lis)
    ((equal? (car lis) (car(cdr lis))) (compress(cdr lis)))
    (else (cons (car lis) (compress(cdr lis))))
  )
)
