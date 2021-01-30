module Problems.Problem021 where
  insertAt :: a -> [a] -> Int -> [a]
  insertAt v xs i
    | i > len = xs ++ [v]
    | otherwise =
      let (l,r) = splitAt (i - 1) xs in l ++ [v] ++ r
    where
      len = length xs
