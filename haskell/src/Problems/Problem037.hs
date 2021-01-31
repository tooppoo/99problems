module Problems.Problem037 (phi) where
  import Problems.Problem036

  phi :: Int -> Int
  phi 1 = 1
  phi n = product $ map multi $ primeFactorsMulti n

  multi :: (Int, Int) -> Int
  multi (p, m) = (p - 1) * (p ** (m - 1))
    where
      (**) = (^)
