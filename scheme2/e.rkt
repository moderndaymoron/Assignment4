;a) (4%) Write the function sumList that returns the sum of the elments in the argument list.
(define (sumList lis)
  (cond
    ((null? lis) 0)
    (else (+ (car lis) (sumList(cdr lis))))
  )
)

;b
(define (charCount sym) (string-length (symbol->string sym)))

(define (charactersPerWord lis)
  (map charCount lis)
)

;c
(define (charactersPerSentence lis)
  (map sumList(map charactersPerWord lis))
)

;d
(define (wordsPerSentence lis)
  (map length lis)
)

(define (statsDocument lis)
  (list(sumList(charactersPerSentence lis)) (sumList(wordsPerSentence lis)) (length lis))
)
