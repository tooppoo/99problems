module Problems.Problem019Spec where

import Test.Hspec
import Problems.Problem019

spec = do
  describe "Problem019" $ do
    describe "rotate ['a','b','c','d','e','f','g','h'] 3" $ do
      it "should \"defghabc\"" $ do
        rotate ['a','b','c','d','e','f','g','h'] 3 `shouldBe` "defghabc"
    describe "rotate ['a','b','c','d','e','f','g','h'] (-2)" $ do
      it "should \"ghabcdef\"" $ do
        rotate ['a','b','c','d','e','f','g','h'] (-2) `shouldBe` "ghabcdef"
    describe "rotate [1,2,3,4] 6" $ do
      it "should [3,4,1,2]" $ do
        rotate [1,2,3,4] 6 `shouldBe` [3,4,1,2]
