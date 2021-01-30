module Problems.Problem025Spec where

import Test.Hspec
import Problems.Problem025

spec = do
  describe "Problem025" $ do
    it "should sort randomly" $ do
      rndPermu "abcdef" >>= print
