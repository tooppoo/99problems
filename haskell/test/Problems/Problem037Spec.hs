module Problems.Problem037Spec where

import Test.Hspec
import Problems.Problem037

spec = do
  describe "Problem037" $ do
    describe "phi 10" $ do
      it "should be 4" $ do
        phi 10 `shouldBe` 4
    describe "phi 1" $ do
      it "should be 1" $ do
        phi 1 `shouldBe` 1
