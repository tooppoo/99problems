module Problems.Problem032 (myGCD) where
  myGCD :: Int -> Int -> Int
  myGCD = euclid

  euclid :: Int -> Int -> Int
  euclid m 0 = m
  euclid m n
    | m < 0 = euclid (abs m) n
    | n < 0 = euclid m (abs n)
    | n > m = euclid n m
    | otherwise = euclid n (m `mod` n)
