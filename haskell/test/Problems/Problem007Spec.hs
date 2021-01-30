module Problems.Problem007Spec where

import Test.Hspec
import Problems.Problem007

spec = do
  describe "Problem007" $ do
    describe "flatten (Elem 5)" $ do
      it "should be [5]" $ do
        flatten (Elem 5) `shouldBe` [5]
    describe "flatten (List[])" $ do
      it "should be []" $ do
        flatten (List ([] :: [NestedList Int])) `shouldBe` ([] :: [Int])
    describe "flatten (List [Elem 5])" $ do
      it "should be [5]" $ do
        flatten (List [Elem 5]) `shouldBe` [5]
    describe "flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]])" $ do
      it "should be [1, 2, 3, 4, 5]" $ do
        flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]]) `shouldBe` [1, 2, 3, 4, 5]
