module Problems.Problem017 where
  split :: [a] -> Int -> ([a], [a])
  -- split xs n = splitAt n xs
  split xs n = (take n xs, drop n xs)
