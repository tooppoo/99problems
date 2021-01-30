module Problems.Problem015 where
  repli :: [a] -> Int -> [a]
  repli [] _ = []
  repli (x:xs) n = replicate n x ++ repli xs n
