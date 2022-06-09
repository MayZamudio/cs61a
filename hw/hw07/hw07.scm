(define (cddr s) 
    (cdr (cdr s)))

(define (cadr s) 
    (car (cdr s))
)

(define (caddr s) 
    (car (cdr (cdr s)))
)

; SOLUTION
; (define (caddr s)
;   (car (cddr s))
; )


(define (ordered? s)
  (cond 
    ((null? s) #t)
    ((eq? (length s) 1) #t)
    ((>= (car (cdr s)) (car s))
     (eq? (car (cdr s)) (car s))
        (ordered? (cdr s)))
    (else #f)))

; SOLUTION
; (define (ordered? s)
;   (if (or (null? s) (null? (cdr s)))
;       true
;       (and (<= (car s) (car (cdr s))) (ordered? (cdr s))))
; )

(define (square x) 
    (* x x))

(define (pow base exp)
    (if (zero? exp)
        1
    (if (even? exp)
        (pow (square base) (quotient exp 2))
    (* base (pow (square base) (quotient (- exp 1) 2)))))
)

; SOLUTION
; (define (square x) (* x x))

; (define (pow base exp)
;   (cond ((= exp 0) 1)
;         ((even? exp) (square (pow base (/ exp 2))))
;         (else (* base (pow base (- exp 1)))))
; )