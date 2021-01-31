module Problems.Problem040 where
  import Problems.Problem039

  goldBach :: (Integral a) => a -> (a, a)
  goldBach n = head [(x,y) | x <- primes, y <- primes, x + y == n]
    where
      primes = primesR 2 (n - 2)
