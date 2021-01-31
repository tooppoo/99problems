module Problems.Problem040Spec where

import Test.Hspec
import Problems.Problem040

spec = do
  describe "Problem040" $ do
    describe "goldBach 28" $ do
      it "should be (5, 23)" $ do
        goldBach 28 `shouldBe` (5, 23)
    describe "goldBach 6" $ do
      it "should be (3, 3)" $ do
        goldBach 6 `shouldBe` (3, 3)
