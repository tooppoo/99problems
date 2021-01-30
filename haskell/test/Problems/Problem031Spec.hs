module Problems.Problem031Spec where

import Test.Hspec
import Problems.Problem031

spec = do
  describe "Problem031" $ do
    describe "isPrime 7" $ do
      it "should be True" $ do
        isPrime 7 `shouldBe` True
    describe "isPrime 10" $ do
      it "should be True" $ do
        isPrime 10 `shouldBe` False

