(define (my-filter func lst) 
  ;Case 1 (Base Case): empty list
  (cond
    ((null? lst)
      nil)
  ;Case 2: element satisfies function
    ;1. add the element to the list
    ;2. check if the element in the rest of the list satisfies the predicate FUNC
  ((func (car lst)) (cons (car lst) (my-filter func (cdr lst))))
  ;Case 3: element does not satisfy the function
    ;1. Check if the elements in the rest of the list satisfy FUNC
  (else (my-filter func (cdr lst)))
  )
)

(define (interleave s1 s2) 
  ; Base case: if s1 or s2 are empty
  ; If s1 and s2 is not empty add the fisrt element of s1 and s2 to the list, then recursively interleave the rest of s1 and s2
  (cond
  ; Case 1: s1 is empty
    ((null? s1) append s2 )
  ; Case 1: s2 is empty  
    ((null? s2) append s1 )
  ; Case 1: s1 and s2 are not empty
    (else (cons (car s1) (cons (car s2) (interleave (cdr s1) (cdr s2)))))
  )
)

; SOLUTION
; (define (interleave s1 s2)
;   (if (or (null? s1) (null? s2))
;       (append s1 s2)
;       (cons (car s1)
;             (cons (car s2)
;                   (interleave (cdr s1) (cdr s2)))))
; )

(define (accumulate merger start n term)
  ;base case: how do you know you've reached the end?
  ;merge terms together with merger
  (if 
    (= n 0) start
  (merger (term n) (accumulate merger start (- n 1) term))
  )
)

; SOLUTION
; (define (accumulate merger start n term)
;   (if (= n 0)
;     start
;     (accumulate merger (merger (term n) start) (- n 1) term))
; )


(define (no-repeats lst) 
  ( if 
    ;Base case: Empty List
    (null? lst) nil
    ; add the first element to the list
    ; rest of the list is a recursive call to no-repeats
    (cons (car lst) (no-repeats (my-filter (lambda (x) (not (= x (car lst))) )(cdr lst)))) ;  func = lambda
  

  ; Make sure the first time you see an element in the input list
  ; It is the first and only time you see the element in the resulting list you return
  ; --> filter element out of the list using the my-filter function
  ; my-filter returns list with elemnts that SATISFY predicate
  ; 1. Want to keep all the elements that are not equal to the first element
    ; lambda function: element is not equal to the first element
    ; (lambda (x) ______ )
  ; 2. Call no-repeats on this filtered list 
))
