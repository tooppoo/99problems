module Problems.Problem004Spec where

import Test.Hspec
import Problems.Problem004

spec = do
  describe "Problem004" $ do
    describe "myLength [123, 456, 789]" $ do
      it "should be 3" $ do
        myLength [123, 456, 789] `shouldBe` 3
    describe "myLength \"Hello, world!\"" $ do
      it "should be 13" $ do
        myLength "Hello, world!" `shouldBe` 13
    describe "myLength []" $ do
      it "should be 0" $ do
        myLength [] `shouldBe` 0
    describe "myLength \"\"" $ do
      it "should be 0" $ do
        myLength "" `shouldBe` 0
