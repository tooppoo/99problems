{-# LANGUAGE LambdaCase #-}

module Problems.Problem012 (decodeModified, Encoded(Single, Multiple)) where
  import Problems.Problem011

  decodeModified :: [Encoded a] -> [a]
  decodeModified = concatMap $ \case
    (Single x) -> [x]
    (Multiple n x) -> replicate n x
