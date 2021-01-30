module Problems.Problem023 where
  import System.Random
  import Control.Monad (replicateM)

  rndSelect :: [a] -> Int -> IO [a]
  rndSelect _ 0 = return []
  rndSelect xs n = do
    pos <- replicateM n $ rand (length xs)
    return [xs !! p | p <- pos]

  rand x = getStdRandom $ randomR (0, x - 1)
