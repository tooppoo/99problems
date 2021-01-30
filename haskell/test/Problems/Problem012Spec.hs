module Problems.Problem012Spec where

import Test.Hspec
import Problems.Problem012

spec = do
  describe "Problem012" $ do
    describe "decodeModified \
      \[Multiple 4 'a',Single 'b',Multiple 2 'c', Multiple 2 'a',Single 'd',Multiple 4 'e']\
      \" $ do
        it "should be \"aaaabccaadeeee\"" $ do
          decodeModified [Multiple 4 'a', Single 'b', Multiple 2 'c', Multiple 2 'a', Single 'd', Multiple 4 'e'] `shouldBe` "aaaabccaadeeee"
    describe "decodeModified \
      \[Multiple 2 1,Single 2,Multiple 2 3, Multiple 3 4,Single 5]\
      \" $ do
        it "should be [1,1,2,3,3,4,4,4,5]" $ do
          decodeModified [Multiple 2 1,Single 2,Multiple 2 3, Multiple 3 4,Single 5] `shouldBe` [1,1,2,3,3,4,4,4,5]
