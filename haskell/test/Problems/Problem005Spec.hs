module Problems.Problem005Spec where

import Test.Hspec
import Problems.Problem005

spec = do
  describe "Problem005" $ do
    describe "myReverse \"A man, a plan, a canal, panama!\"" $ do
      it "should be \"!amanap ,lanac a ,nalp a ,nam A\"" $ do
        myReverse "A man, a plan, a canal, panama!" `shouldBe` "!amanap ,lanac a ,nalp a ,nam A"
    describe "myReverse [1,2,3,4]" $ do
      it "should be [4, 3, 2, 1]" $ do
        myReverse [1, 2, 3, 4] `shouldBe` [4, 3, 2, 1]
