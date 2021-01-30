module Problems.Problem008Spec where

import Test.Hspec
import Problems.Problem008

spec = do
  describe "Problem008" $ do
    describe "compress \"aaaabccaadeeee\"" $ do
      it "should be \"abcade\"" $ do
        compress "aaaabccaadeeee" `shouldBe` "abcade"
    describe "compress \"bbbcccaaaddccab\"" $ do
      it "should be \"bcadcab\"" $ do
        compress "bbbcccaaaddccabb" `shouldBe` "bcadcab"
    describe "compress \"abcdefg\"" $ do
      it "should be \"abcdefg\"" $ do
        compress "abcdefg" `shouldBe` "abcdefg"
