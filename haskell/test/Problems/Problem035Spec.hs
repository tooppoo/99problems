module Problems.Problem035Spec where

import Test.Hspec
import Problems.Problem035

spec = do
  describe "Problem035" $ do
    describe "primeFactors 315" $ do
      it "should be [3,3,5,7]" $ do
        primeFactors 315 `shouldBe` [3,3,5,7]
    describe "primeFactors 12" $ do
      it "should be [2,2,3]" $ do
        primeFactors 12 `shouldBe` [2,2,3]
