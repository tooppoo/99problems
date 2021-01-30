module Problems.Problem009Spec where

import Test.Hspec
import Problems.Problem009

spec = do
  describe "Problem009" $ do
    describe "pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e']" $ do
      it "should be [\"aaaa\",\"b\",\"cc\",\"aa\",\"d\",\"eeee\"]" $ do
        pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e'] `shouldBe` ["aaaa", "b", "cc", "aa", "d", "eeee"]
