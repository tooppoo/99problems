module Problems.Problem020 where
  removeAt :: (Eq a) => Int -> [a] -> ([a], [a])
  removeAt at xs
    | at > length xs = ([], xs)
    | otherwise = ([rm], filter (/= rm) xs)
    where
      rm = xs !! (at - 1)
