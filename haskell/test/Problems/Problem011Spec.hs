module Problems.Problem011Spec where

import Test.Hspec
import Problems.Problem011

spec = do
  describe "Problem011" $ do
    describe "encodeModified \"aaaabccaadeeee\"" $ do
      it "should be [Multiple 4 'a',Single 'b',Multiple 2 'c', Multiple 2 'a',Single 'd',Multiple 4 'e']" $ do
        encodeModified "aaaabccaadeeee" `shouldBe`
          [Multiple 4 'a',Single 'b',Multiple 2 'c', Multiple 2 'a',Single 'd',Multiple 4 'e']
    describe "encodeModified [1,1,2,3,3,4,4,4,5]" $ do
      it "should be [Multiple 2 1,Single 2,Multiple 2 3, Multiple 3 4,Single 5]" $ do
        encodeModified [1,1,2,3,3,4,4,4,5] `shouldBe`
          [Multiple 2 1,Single 2,Multiple 2 3, Multiple 3 4,Single 5]
