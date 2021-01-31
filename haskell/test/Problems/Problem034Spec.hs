module Problems.Problem034Spec where

import Test.Hspec
import Problems.Problem034

spec = do
  describe "Problem034" $ do
    describe "totient 10" $ do
      it "should be 4" $ do
        totient 10 `shouldBe` 4
    describe "totient 1" $ do
      it "should be 1" $ do
        totient 1 `shouldBe` 1
