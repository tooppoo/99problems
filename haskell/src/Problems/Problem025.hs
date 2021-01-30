module Problems.Problem025 where
  import System.Random
  import Problems.Problem023

  rndPermu :: [a] -> IO [a]
  rndPermu xs = rndSelect xs (length xs)
