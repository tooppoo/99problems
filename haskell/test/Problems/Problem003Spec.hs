module Problems.Problem003Spec where

import Test.Hspec
import Problems.Problem003

spec = do
  describe "Problem003" $ do
    describe "elementAt [1, 2, 3] 2" $ do
      it "should be 2" $ do
        elementAt [1, 2, 3] 2 `shouldBe` 2
    describe "elementAt \"haskell\" 5" $ do
      it "should be 'e'" $ do
        elementAt "haskell" 5 `shouldBe` 'e'
