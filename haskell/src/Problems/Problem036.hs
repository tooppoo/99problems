module Problems.Problem036 where
  import Data.Tuple
  import Problems.Problem010
  import Problems.Problem035

  primeFactorsMulti :: Int -> [(Int, Int)]
  primeFactorsMulti n = map swap $ encode $ primeFactors n
