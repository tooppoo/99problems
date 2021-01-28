module Problems.Problem001Spec where

import Test.Hspec
import Problems.Problem001

spec :: Spec
spec = do
  describe "Problem001" $ do
    describe "myLast [1, 2, 3, 4]" $ do
      it "should be 4" $ do
        myLast [1, 2, 3, 4] `shouldBe` 4
