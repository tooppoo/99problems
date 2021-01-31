module Problems.Problem033 where
  import Problems.Problem032

  coprime :: Int -> Int -> Bool
  coprime m n = myGCD m n == 1
