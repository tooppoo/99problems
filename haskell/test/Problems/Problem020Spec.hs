module Problems.Problem020Spec where

import Test.Hspec
import Problems.Problem020

spec = do
  describe "Problem020" $ do
    describe "removeAt 2 \"abcd\"" $ do
      it "should be (\"b\", \"acd\")" $ do
        removeAt 2 "abcd" `shouldBe` ("b", "acd")
    describe "removeAt 5 [1,2,3,4]" $ do
      it "should be ([], [1,2,3,4])" $ do
        removeAt 5 [1,2,3,4] `shouldBe` ([], [1,2,3,4])
