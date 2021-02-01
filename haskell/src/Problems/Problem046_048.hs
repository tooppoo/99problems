module Problems.Problem046_048 where
  import Control.Monad (replicateM)

  table :: (Bool -> Bool -> Bool) -> [(Bool, Bool, Bool)]
  table f = map list3ToTuple $ tableN 2 (apply f)
    where
      apply f [a, b] = f a b
      list3ToTuple [a, b, c] = (a, b, c)
  -- table f = map (apply f) values
  --   where
  --     apply f (a, b) = (a, b, f a b)
  --     values = [
  --         (True, True),
  --         (True, False),
  --         (False, True),
  --         (False, False)
  --       ]

  tableN :: Int -> ([Bool] -> Bool) -> [[Bool]]
  tableN n cb = [x ++ [cb x]| x <- replicateM n [True, False]]

  or' :: Bool -> Bool -> Bool
  or' False False = False
  or' _ _ = True

  and' :: Bool -> Bool -> Bool
  and' True True = True
  and' _ _ = False

  nand' :: Bool -> Bool -> Bool
  nand' a b = not $ and' a b

  nor' :: Bool -> Bool -> Bool
  nor' a b = not $ or' a b

  xor' :: Bool -> Bool -> Bool
  xor' a b = not (equ' a b)

  impl' :: Bool -> Bool -> Bool
  impl' a = or' (not a)

  equ' :: Bool -> Bool -> Bool
  equ' True True = True
  equ' False False = True
  equ' _ _ = False

  infixl 4 `or'`
  infixl 6 `and'`
  infixl 3 `equ'`
