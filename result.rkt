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

; c) Compresses the list to no duplicates in a row
(define (compress lis)
  (cond
    ((null? lis) '())
    ((null? (cdr lis)) lis)
    ((equal? (car lis) (car(cdr lis))) (compress(cdr lis)))
    (else (cons (car lis) (compress(cdr lis))))
  )
)

;d) Return max element of list of lists
(define (maxofmax lis)
  (maxElement(map maxElement lis))
)

;e) split list into 2 lists with  n argument as length of first list

(define (Fsplit lis n)
  (cond
   ((eq? n 1)(cons (car lis) '()))
   (else (cons(car lis)(Fsplit(cdr lis) (- n 1))))
   )
)

(define (Ssplit lis n)
  (cond
    ((eq? n 0) lis)
    (else (Ssplit (cdr lis) (- n 1))
   )
  )
)

(define (split lis n)
  (list(Fsplit lis n) (Ssplit lis n))
)


;SCHEME 2
;Assume that a document is represented in Scheme as a list of lists of symbols.
;Each inner list then denotes a sentence, i.e. a list of words.
;Example document:
;'((Hello Mary) (Scheme is so wonderful) (See you later) (John))


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

;e
