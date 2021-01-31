module Problems.Problem039Spec where

import Test.Hspec
import Problems.Problem039

spec = do
  describe "Problem039" $ do
    describe "primesR 10 20" $ do
      it "should be [11,13,17,19]" $ do
        primesR 10 20 `shouldBe` [11,13,17,19]
    describe "primesR 11 23" $ do
      it "should be [11,13,17,19,23]" $ do
        primesR 11 23 `shouldBe` [11,13,17,19,23]
