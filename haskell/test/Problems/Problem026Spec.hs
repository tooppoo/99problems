module Problems.Problem026Spec where

import Test.Hspec
import Problems.Problem026

spec = do
  describe "Problem026" $ do
    describe "combinations 2 \"abc\"" $ do
      it "should be [ab, bc, ac]" $ do
        combinations 2 "abc" `shouldBe` ["ab", "ac", "bc"]
    describe "combinations 3 [1,2,3,4]" $ do
      it "should be [123,234,134,124]" $ do
        combinations 3 [1,2,3,4] `shouldBe` [[1,2,3],[1,2,4],[1,3,4],[2,3,4]]
