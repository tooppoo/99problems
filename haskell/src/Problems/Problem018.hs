module Problems.Problem018 where
  slice :: [a] -> Int -> Int -> [a]
  slice xs begin end = drop (begin - 1) $ take end xs
