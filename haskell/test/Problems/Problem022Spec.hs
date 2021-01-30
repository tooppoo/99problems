module Problems.Problem022Spec where

import Test.Hspec
import Problems.Problem022

spec = do
  describe "Problem022" $ do
    describe "range 4 9" $ do
      it "should be [4,5,6,7,8,9]" $ do
        range 4 9 `shouldBe` [4,5,6,7,8,9]
    describe "range 5 5" $ do
      it "should be [5]" $ do
        range 5 5 `shouldBe` [5]
    describe "range 5 2" $ do
      it "should be [5,4,3,2]" $ do
        range 5 2 `shouldBe` [5,4,3,2]
