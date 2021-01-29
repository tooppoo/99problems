module Problems.Problem005 (myReverse) where
  myReverse :: [a] -> [a]
  myReverse = foldr snoc []

  snoc :: a -> [a] -> [a]
  snoc x xs = xs ++ [x]
