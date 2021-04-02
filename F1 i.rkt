; F1 i:

(define occurrences
  (λ (list1 num1)
    (define times 0)
    (for-each (λ (i)   ; loop 
                (if (equal? i num1)    ; if equal to char in list
                    (set! times (+ times 1)))) ; increase by +1
              list1)
    times)) 
(define times 0)

(occurrences '(#\a #\a #\b #\c) #\a)   ; calling function with to test it works
