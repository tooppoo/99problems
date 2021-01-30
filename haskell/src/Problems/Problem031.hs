module Problems.Problem031 where
  import Problems.Problem022

  isPrime :: Int -> Bool
  isPrime = eratosthenes

  eratosthenes :: Int -> Bool
  eratosthenes n = n `elem` eratosthenes' (sqrtInt n) (range 2 n) []
    where
      sqrtInt :: Int -> Int
      sqrtInt n = truncate (sqrt $ fromIntegral n) ::Int

  eratosthenes' :: Int -> [Int] -> [Int] -> [Int]
  eratosthenes' 0 xs ps = ps ++ xs
  eratosthenes' n (x:xs) ps = eratosthenes' (n - 1) (filter (withoutMultiOf x) xs) (x:ps)
    where
      withoutMultiOf x y = y `mod` x /= 0
