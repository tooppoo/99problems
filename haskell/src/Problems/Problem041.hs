module Problems.Problem041 where
  import Problems.Problem040

  goldBachList :: (Integral a) => a -> a -> [(a, a)]
  goldBachList min max = [ goldBach x | x <- [min..max], even x]

  goldBachList' :: (Integral a) => a -> a -> a -> [(a, a)]
  goldBachList' begin end bottom = [
      (a, b)
      |
      (a, b) <- goldBachList begin' end,
      a > bottom,
      b > bottom
    ]
    where
      begin' = max begin (bottom * 2)
