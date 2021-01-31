module Problems.Problem039 where
  import Problems.Problem035
  import Problems.Problem031

  primesR :: Int -> Int -> [Int]
  primesR min max = filter isPrime [min..max]
