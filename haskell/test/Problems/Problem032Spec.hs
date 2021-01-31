module Problems.Problem032Spec where

import Test.Hspec
import Problems.Problem032

spec = do
  describe "Problem032" $ do
    describe "myGCD 36 63" $ do
      it "should be 9" $ do
        myGCD 36 63 `shouldBe` 9
    describe "myGCD (-3) (-6)" $ do
      it "should be 3" $ do
        myGCD (-3) (-6) `shouldBe` 3
    describe "myGCD (-3) 6" $ do
      it "should be 3" $ do
        myGCD (-3) 6 `shouldBe` 3
