module Problems.Problem006Spec where

import Test.Hspec
import Problems.Problem006

spec = do
  describe "Problem006" $ do
    describe "isPalindrome [1,2,3]" $ do
      it "should be False" $ do
        isPalindrome [1, 2, 3] `shouldBe` False
    describe "isPalindrome \"madamimadam\"" $ do
      it "should be True" $ do
        isPalindrome "madamimadam" `shouldBe` True
    describe "isPalindrome \"abccba\"" $ do
      it "should be True" $ do
        isPalindrome "abccba" `shouldBe` True
    describe "isPalindrome [1,2,4,8,16,8,4,2,1]" $ do
      it "should be True" $ do
        isPalindrome [1,2,4,8,16,8,4,2,1] `shouldBe` True
