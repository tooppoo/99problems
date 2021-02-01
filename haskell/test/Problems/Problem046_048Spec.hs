module Problems.Problem046_048Spec where

import Test.Hspec
import Problems.Problem046_048

spec = do
  describe "Problem046" $ do
    describe "table (\\a b -> (and' a (or' a b)))" $ do
      it "should be truth table" $ do
        table (\a b -> and' a (or' a b))
        `shouldBe`
        [
          (True, True, True),
          (True, False, True),
          (False, True, False),
          (False, False, False)
        ]
  describe "Problem047" $ do
    describe "table (\\a b -> a `and'` (a `or'` not b))" $ do
      it "should be truth table" $ do
        table (\a b -> a `and'` (a `or'` not b))
        `shouldBe`
        [
          (True, True, True),
          (True, False, True),
          (False, True, False),
          (False, False, False)
        ]
  describe "Problem048" $ do
    describe "tableN 2 (\\[a,b] -> a `and'` (a `or'` not b))" $ do
      it "should be truth table" $ do
        tableN 2 (\[a,b] -> a `and'` (a `or'` not b))
        `shouldBe`
        [
          [True, True, True],
          [True, False, True],
          [False, True, False],
          [False, False, False]
        ]
    describe "tableN 3 (\\[a,b,c] -> a `and'` (b `or'` c) `equ'` a `and'` b `or'` a `and'` c)" $ do
      describe "infixl 3 equ'" $ do
        it "should be truth table" $ do
          tableN 3 (\[a,b,c] -> a `and'` (b `or'` c) `equ'` a `and'` b `or'` a `and'` c)
          `shouldBe`
          [
            [True, True, True, True],
            [True, True, False, True],
            [True, False, True, True],
            [True, False, False, True],
            [False, True, True, True],
            [False, True, False, True],
            [False, False, True, True],
            [False, False, False, True]
          ]
