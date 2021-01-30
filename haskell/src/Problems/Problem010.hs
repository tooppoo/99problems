module Problems.Problem010 where
  encode :: (Eq a) => [a] -> [(Int, a)]
  encode xs@(x:_) = case span (== x) xs of
    (f@(h:_), []) -> [(length f, h)]
    (f@(h:_), s) -> (length f, h) : encode s
