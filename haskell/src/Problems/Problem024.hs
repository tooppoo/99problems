module Problems.Problem024 where
  import System.Random
  import Control.Monad (replicateM)

  diffSelect :: Int -> Int -> IO [Int]
  diffSelect 0 _ = return []
  diffSelect n max = do
    replicateM n $ rand max

  rand x = getStdRandom $ randomR (0, x - 1)
