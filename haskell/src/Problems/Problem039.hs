module Problems.Problem039 where
  import Problems.Problem035
  import Problems.Problem031

  primesR :: (Integral a) => a -> a -> [a]
  primesR min max = filter isPrime [min..max]
