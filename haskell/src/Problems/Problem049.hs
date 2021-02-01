module Problems.Problem049 (gray) where
  import Data.Bits
  import Text.Printf

  gray :: Int -> [String]
  gray n = [ printf format (toB x) | x <- [0..max] ]
    where
      format = "%0" ++ show n ++ "b"
      toB x = x `xor` shiftR x 1
      max = (2::Int) ^ n - 1
