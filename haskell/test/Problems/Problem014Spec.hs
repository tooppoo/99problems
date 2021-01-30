module Problems.Problem014Spec where

import Test.Hspec
import Problems.Problem014

spec = do
  describe "Problem014" $ do
    describe "dupli [1, 2, 3]" $ do
      it "should be [1, 1, 2, 2, 3, 3]" $ do
        dupli [1, 2, 3] `shouldBe` [1, 1, 2, 2, 3, 3]
    describe "dupli ['a', 'b', 'c']" $ do
      it "should be ['a', 'a', 'b', 'b', 'c', 'c']" $ do
        dupli ['a', 'b', 'c'] `shouldBe` ['a', 'a', 'b', 'b', 'c', 'c']
