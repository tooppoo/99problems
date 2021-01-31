module Problems.Problem031 where
  import Problems.Problem022

  isPrime :: (Integral a) => a -> Bool
  isPrime = eratosthenes

  eratosthenes :: (Integral a) => a -> Bool
  eratosthenes n = n `elem` eratosthenes' (sqrtInt n) (range 2 n) []
    where
      sqrtInt :: (Integral a) => a -> a
      sqrtInt n = truncate (sqrt $ fromIntegral n)

  eratosthenes' :: (Integral a) => a -> [a] -> [a] -> [a]
  eratosthenes' 0 xs ps = ps ++ xs
  eratosthenes' n (x:xs) ps = eratosthenes' (n - 1) (filter (withoutMultiOf x) xs) (x:ps)
    where
      withoutMultiOf x y = y `mod` x /= 0
