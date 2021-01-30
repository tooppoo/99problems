module Problems.Problem021Spec where

import Test.Hspec
import Problems.Problem021

spec = do
  describe "Problem021" $ do
    describe "insertAt 'X' \"abcd\" 2" $ do
      it "should be \"aXbcd\"" $ do
        insertAt 'X' "abcd" 2 `shouldBe` "aXbcd"
    describe "insertAt 100 [1,2,3,4] 6" $ do
      it "should be [1,2,3,4,100]" $ do
        insertAt 100 [1,2,3,4] 6 `shouldBe` [1,2,3,4,100]
