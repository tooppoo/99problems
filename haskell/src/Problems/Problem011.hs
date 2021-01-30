module Problems.Problem011 (encodeModified, Encoded (Single, Multiple)) where
  import Problems.Problem010

  data Encoded a =
    Single a |
    Multiple Int a deriving (Eq, Show)

  encodeModified :: (Eq a) => [a] -> [Encoded a]
  encodeModified = map encode' . encode

  encode' :: (Int, a) -> Encoded a
  encode' (1, x) = Single x
  encode' (n, x) = Multiple n x
