module Problems.Problem002Spec where

import Test.Hspec
import Control.Exception (evaluate)
import Problems.Problem002

spec = do
  describe "Problem002" $ do
    describe "myButLast [1, 2, 3, 4]" $ do
      it "should be 3" $ do
        myButLast [1, 2, 3, 4] `shouldBe` 3
    describe "myButLast ['x', 'y', 'z']" $ do
      it "should be 'y'" $ do
        myButLast ['x', 'y', 'z'] `shouldBe` 'y'

    describe "myButLast []" $ do
      it "should throw error" $ do
        evaluate (myButLast []) `shouldThrow` anyException

    describe "myButLast [1]" $ do
      it "should throw error" $ do
        evaluate (myButLast [1]) `shouldThrow` anyException
