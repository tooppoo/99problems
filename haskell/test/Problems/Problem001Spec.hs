module Problems.Problem001Spec where

import Test.Hspec  
import Control.Exception (evaluate)
import Problems.Problem001

spec :: Spec
spec = do
  describe "Problem001" $ do
    describe "myLast [1, 2, 3, 4]" $ do
      it "should be 4" $ do
        myLast [1, 2, 3, 4] `shouldBe` 4
    describe "myLast ['x', 'y', 'z']" $ do
      it "should be 'z'" $ do
        myLast ['x', 'y', 'z'] `shouldBe` 'z'
    describe "myLast [1]" $ do
      it "should be 1" $ do
        myLast [1] `shouldBe` 1
    describe "myLast []" $ do
      it "should throw error" $ do
        evaluate (myLast []) `shouldThrow` anyException
