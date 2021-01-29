module Problems.Problem002 where
  myButLast :: [a] -> a
  myButLast [x, _] = x
  myButLast (_:xs) = myButLast xs
