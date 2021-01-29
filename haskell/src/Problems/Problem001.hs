module Problems.Problem001 where

  myLast :: [a] -> a
  myLast [x] = x
  myLast (_: xs) = myLast xs
  myLast [] = error "empty list error"
