module Problems.Problem008 where
  compress :: Eq a => [a] -> [a]
  compress [x] = [x]
  compress (x:xs@(y:_)) = if x == y then
      compress xs
    else
      x : compress xs
