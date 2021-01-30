module Problems.Problem018Spec where

import Test.Hspec
import Problems.Problem018

spec = do
  describe "Problem018" $ do
    describe "slice ['a','b','c','d','e','f','g','h','i','k'] 3 7" $ do
      it "should be \"cdefg\"" $ do
        slice ['a','b','c','d','e','f','g','h','i','k'] 3 7 `shouldBe` "cdefg"
    describe "slice [1,2,3,4,5] 2 2" $ do
      it "should be [2]" $ do
        slice [1,2,3,4,5] 2 2 `shouldBe` [2]
    describe "slice [1,2,3,4,5] 4 2" $ do
      it "should be []" $ do
        slice [1,2,3,4,5] 4 2 `shouldBe` []
    describe "slice [1,2,3,4,5] 6 7" $ do
      it "should be []" $ do
        slice [1,2,3,4,5] 6 7 `shouldBe` []
