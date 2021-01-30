module Problems.Problem024Spec where

import Test.Hspec
import Problems.Problem024

spec = do
  describe "Problem024" $ do
    it "should select randomly" $ do
      diffSelect 6 49 >>= print