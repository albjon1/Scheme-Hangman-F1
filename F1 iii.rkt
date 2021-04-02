; F1 iii:

(define (noOfHits numbers)
  (cond ((null? numbers) 0)
        ((if( not (equal? (car numbers) #\*))
            (+ 1 (noOfHits (cdr numbers)))
            (noOfHits (cdr numbers)
          ))
   ))
)

(noOfHits '(#\* #\a #\a))

