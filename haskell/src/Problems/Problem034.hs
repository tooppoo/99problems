module Problems.Problem034 (totient) where
  import Problems.Problem022
  import Problems.Problem033

  totient :: Int -> Int
  totient 1 = 1
  totient n = length [x | x <- range 1 (n - 1), coprime n x]
