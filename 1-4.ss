(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
;;在 if 的判断部分，它根据 b 的值决定是返回 + 还是 -
