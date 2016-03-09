;SCHEME 1
; a) Returns the max element of a list
(define (maxElement lis)
  (apply max lis)
)

; b) Returns the n-th element from lis
(define (elementAtIndex lis n)
  (if (= n 1)
      (car lis)
      (elementAtIndex (cdr lis) (- n 1))
  )
)
