module Problems.Problem015Spec where

import Test.Hspec
import Problems.Problem015

spec = do
  describe "Problem015" $ do
    describe "repli \"abc\" 3" $ do
      it "should be \"aaabbbccc\"" $ do
        repli "abc" 3 `shouldBe` "aaabbbccc"
    describe "repli [1,2,3] 2" $ do
      it "should be [1,1,2,2,3,3]" $ do
        repli [1,2,3] 2 `shouldBe` [1,1,2,2,3,3]
