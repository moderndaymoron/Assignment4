(define (charCount sym) (string-length (symbol->string sym)))
(define (charactersPerWord lis)
  (map charCount lis)
)
