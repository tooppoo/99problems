module Problems.Problem013 (encodeDirect, Encoded(Multiple, Single)) where
  import Problems.Problem012

  encodeDirect :: (Eq a) => [a] -> [Encoded a]
  encodeDirect xs = encode $ toPair xs

  toPair :: (Eq a) => [a] -> [(Int, a)]
  toPair xs@(x:_) = case span (== x) xs of
    (f@(h:_), []) -> [(length f, h)]
    (f@(h:_), s) -> (length f, h) : toPair s

  encode :: [(Int, a)] -> [Encoded a]
  encode = map encode'

  encode' :: (Int, a) -> Encoded a
  encode' (1, x) = Single x
  encode' (n, x) = Multiple n x
