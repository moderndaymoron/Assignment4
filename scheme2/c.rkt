(define (sumList lis)
  (cond
    ((null? lis) 0)
    (else (+ (car lis) (sumList(cdr lis))))
  )
)

(define (charCount sym) (string-length (symbol->string sym)))

(define (charactersPerWord lis)
  (map charCount lis)
)

(define (charactersPerSentence lis)
  (map sumList(map charactersPerWord lis))
)
