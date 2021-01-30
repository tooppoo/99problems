module Problems.Problem007 where
  data NestedList a =
    Elem a |
    List [NestedList a]

  flatten :: NestedList a -> [a]
  flatten (Elem n) = [n]
  flatten (List xs) = concatMap flatten xs
