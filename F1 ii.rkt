; F1 ii:

(define (indices chars char)
  (define (loop chars-list index)
    (if (null? chars-list) '()
      (let ((indices-list (loop (cdr chars-list) (+ index 1))))
        (if (equal? (car chars-list) char)
          (cons index indices-list)
          indices-list))))
  (loop chars 0))


(indices '(#\a #\b #\b #\b) #\b)