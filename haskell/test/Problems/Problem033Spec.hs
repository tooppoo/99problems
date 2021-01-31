module Problems.Problem033Spec where

import Test.Hspec
import Problems.Problem033

spec = do
  describe "Problem033" $ do
    describe "coprime 35 64" $ do
      it "should be True" $ do
        coprime 35 64 `shouldBe` True
