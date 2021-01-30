module Problems.Problem016Spec where

import Test.Hspec
import Problems.Problem016

spec = do
  describe "Problem016" $ do
    describe "dropEvery \"abcdefghik\" 3" $ do
      it "should be \"abdeghk\"" $ do
        dropEvery "abcdefghik" 3 `shouldBe` "abdeghk"
    describe "dropEvery [1, 2, 3, 4] 4" $ do
      it "should be [1, 2, 3]" $ do
        dropEvery [1, 2, 3, 4] 4 `shouldBe` [1, 2, 3]
    describe "dropEvery [1, 2, 3, 4] 5" $ do
      it "should be [1, 2, 3, 5]" $ do
        dropEvery [1, 2, 3, 4] 5 `shouldBe` [1, 2, 3, 4]
