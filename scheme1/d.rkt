(define (maxElement lis)
  (apply max lis)
)

(define (maxofmax lis)
  (maxElement(map maxElement lis))
)
