; 1. SCHEME Functions

;a
(define (maxElement lis)
  (apply max lis)
)

;b
(define (elementAtIndex lis n)
  (if (= n 1)
      (car lis)
      (elementAtIndex (cdr lis) (- n 1))
  )
)

;c
(define (compress lis)
  (cond
    ((null? lis) '())
    ((null? (cdr lis)) lis)
    ((equal? (car lis) (car(cdr lis))) (compress(cdr lis)))
    (else (cons (car lis) (compress(cdr lis))))
  )
)

;d
(define (maxofmax lis)
  (maxElement(map maxElement lis))
)

;e
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

; 2 SCHEME Functions

;a
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
(define (statsDocument lis)
  (list(sumList(charactersPerSentence lis)) (sumList(wordsPerSentence lis)) (length lis))
)

; 1. SCHEME Testcases

(maxElement '(5 3 7 2 6 1 4))

(elementAtIndex '(a b c d e f) 4)

(compress '(a a a b b c c c d d d d e f f))

(maxofmax '((5 3 6 2) (1 6 2 7) (7 3 8 2 9) (6 2 4 1)))

(split '(a b c d e f g) 3)

; 2. SCHEME Testcases

(sumList '(5 4 3))

(charactersPerWord ' (Scheme is so wonderful))

(charactersPerSentence '((Hello Mary) (Scheme is so wonderful) (See you later)
(John)))

(wordsPerSentence '((Hello Mary) (Scheme is so wonderful) (See you later)
(John)))

(statsDocument '((Hello Mary) (Scheme is so wonderful) (See you later)
(John)))
