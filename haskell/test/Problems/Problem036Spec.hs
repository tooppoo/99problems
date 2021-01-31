module Problems.Problem036Spec where

import Test.Hspec
import Problems.Problem036

spec = do
  describe "Problem036" $ do
    describe "primeFactorsMulti 315" $ do
      it "should be [(3,2),(5,1),(7,1)]" $ do
        primeFactorsMulti 315 `shouldBe` [(3,2),(5,1),(7,1)]
    describe "primeFactorsMulti 12" $ do
      it "should be [(2,2),(3,1)]" $ do
        primeFactorsMulti 12 `shouldBe` [(2,2),(3,1)]
