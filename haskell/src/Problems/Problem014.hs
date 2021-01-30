module Problems.Problem014 where
  import Problems.Problem007

  dupli :: [a] -> [a]
  dupli [] = []
  dupli (x:xs) = x : x : dupli xs
  -- dupli xs = flatten $ List $ map (replicate' 2) xs

  -- replicate' :: Int -> a -> NestedList a
  -- replicate' c x = List $ replicate 2 $ Elem x
