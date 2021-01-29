module Problems.Problem003 (elementAt) where
  elementAt :: [a] -> Int -> a
  elementAt (x:_) 1 = x
  elementAt (_:xs) i = elementAt xs (i - 1)

