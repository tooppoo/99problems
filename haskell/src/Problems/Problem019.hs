module Problems.Problem019 where
  import Data.Tuple

  rotate :: [a] -> Int -> [a]
  rotate xs c
    | c < 0 = rotate xs (len - abs c)
    | c > len = rotate xs (c - len)
    | otherwise = uncurry (++) $ swap $ splitAt c xs
    where
      len = length xs
