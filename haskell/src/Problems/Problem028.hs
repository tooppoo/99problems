module Problems.Problem028 (lsort, lfsort) where
  -- import Data.List ( groupBy, sortOn )
  import Data.List ( groupBy )

  lsort :: (Ord a) => [[a]] -> [[a]]
  -- lsort = sortOn length
  lsort xs = map snd
    $ qsort (\(a, _) (b, _) -> a < b)
    $ map withLength xs
    where
      withLength xs = (length xs, xs)

  lfsort :: (Ord a) => [[a]] -> [[a]]
  lfsort = concat . lsort . groupBy eqLength . lsort 
    where
      eqLength x y = length x == length y

  qsort :: (a -> a -> Bool) -> [a] -> [a]
  qsort _ [] = []
  qsort cmp (p : xs) = sort smaller ++ [p] ++ sort larger
    where
      sort = qsort cmp
      smaller = [x | x <- xs, cmp x p]
      larger = [x | x <- xs, not (cmp x p)]
