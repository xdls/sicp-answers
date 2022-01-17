(define (p) (p))
(define (test x y)
  (if (= x 0)
      0
      y))
;;(test 0 (p))
;;正则序求值
;;0
;;应用序求值
;;(if (= 0 0)
;;     0
;;     (p))
;;错误，无法展开
;;(if (= 0 0)
;;     0
;;     (p))
;;chez-scheme采用应用序求值
