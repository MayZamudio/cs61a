(define (caar x) (car (car x)))
(define (cadr x) (car (cdr x)))
(define (cdar x) (cdr (car x)))
(define (cddr x) (cdr (cdr x)))

;; Returns a list of two-element lists
(define (enumerate s)
  (define (helper i lst)
    (cond ((null? lst) lst)
          (else (cons (cons i (cons (car lst) nil)) (helper (+ i 1) (cdr lst))))
    )
  )
  (helper 0 s)
)

;; Merge two lists LIST1 and LIST2 according to INORDER? and return
;; the merged lists.
(define (merge inorder? list1 list2)
  (cond ((null? list1) list2)
      ((null? list2) list1)
      ((eq? (car list1) (car list2))
        (cons (car list1) (merge inorder? (cdr list1) (cdr list2)))
      )
      ((inorder? (car list1) (car list2)) 
        (cons (car list1) (merge inorder? (cdr list1) list2))
      )
      (else
        (cons (car list2) (merge inorder? list1 (cdr list2)))
      )
  )
)

(define (ordered? s)
  (if (or (null? s) (null? (cdr s)))
      true
      (and (<= (car s) (car (cdr s))) (ordered? (cdr s))))
)


;; Optional Problem 1

;; Returns a function that checks if an expression is the special form FORM
(define (check-special form)
  (lambda (expr) (equal? form (car expr))))

(define lambda? (check-special 'lambda))
(define define? (check-special 'define))
(define quoted? (check-special 'quote))
(define let?    (check-special 'let))

;; Converts all let special forms in EXPR into equivalent forms using lambda
(define (let-to-lambda expr)
  (cond ((atom? expr)
         ; BEGIN PROBLEM 17
         'replace-this-line
         ; END PROBLEM 17
         )
        ((quoted? expr)
         ; BEGIN PROBLEM 17
         'replace-this-line
         ; END PROBLEM 17
         )
        ((or (lambda? expr)
             (define? expr))
         (let ((form   (car expr))
               (params (cadr expr))
               (body   (cddr expr)))
           ; BEGIN PROBLEM 17
           'replace-this-line
           ; END PROBLEM 17
           ))
        ((let? expr)
         (let ((values (cadr expr))
               (body   (cddr expr)))
           ; BEGIN PROBLEM 17
           'replace-this-line
           ; END PROBLEM 17
           ))
        (else
         ; BEGIN PROBLEM 17
         'replace-this-line
         ; END PROBLEM 17
         )))



;; Problem 21 (optional)
;; Draw the hax image using turtle graphics.
(define (hax d k)
  ; BEGIN Question 21
  'replace-this-line
  )
  ; END Question 21