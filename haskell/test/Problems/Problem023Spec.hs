module Problems.Problem023Spec where

import Test.Hspec
import Problems.Problem023

spec = do
  describe "Problem023" $ do
    it "should select randomly" $ do
      rndSelect "abcdefgh" 3 >>= putStrLn
