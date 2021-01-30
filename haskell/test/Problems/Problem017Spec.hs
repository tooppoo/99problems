module Problems.Problem017Spec where

import Test.Hspec
import Problems.Problem017

spec = do
  describe "Problem017" $ do
    describe "split \"abcdefghik\" 3" $ do
      it "should eb (\"abc\", \"defghik\")" $ do
        split "abcdefghik" 3 `shouldBe` ("abc", "defghik")
    describe "split [1, 2, 3, 4, 5, 6] 3" $ do
      it "should eb ([1,2,3], [4,5,6])" $ do
        split [1,2,3,4,5,6] 3 `shouldBe` ([1,2,3], [4,5,6])
