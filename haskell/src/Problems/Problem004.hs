module Problems.Problem004 (myLength) where
  myLength :: [a] -> Int
  myLength = foldl (\n _ -> n + 1) 0
