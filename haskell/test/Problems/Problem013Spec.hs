module Problems.Problem013Spec where

import Test.Hspec
import Problems.Problem013

spec = do
  describe "Problem013" $ do
    describe "encodeDirect \"aaaabccaadeeee\"" $ do
      it "should be [Multiple 4 'a',Single 'b',Multiple 2 'c', Multiple 2 'a',Single 'd',Multiple 4 'e']" $ do
        encodeDirect "aaaabccaadeeee" `shouldBe` [Multiple 4 'a',Single 'b',Multiple 2 'c', Multiple 2 'a',Single 'd',Multiple 4 'e']
