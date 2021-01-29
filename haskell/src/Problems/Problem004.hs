module Problems.Problem004 (myLength) where
  myLength :: [a] -> Int
  myLength xs = count xs 0

  count :: [a] -> Int -> Int
  count [] c = c
  count (_:xs) c = count xs c + 1
