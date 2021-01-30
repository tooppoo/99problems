module Problems.Problem009 where
  import Data.List

  pack :: (Eq a) => [a] -> [[a]]
  -- pack = group
  pack xs@(x:_) = case span (== x) xs of
    (f, []) -> [f]
    (f, s) -> f : pack s
