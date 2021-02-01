module Problems.Problem049Spec where

import Test.Hspec
import Problems.Problem049

spec = do
  describe "Problem049" $ do
    describe "gray 1" $ do
      it "should be ['0', '1']" $ do
        gray 1 `shouldBe` ["0", "1"]
    describe "gray 2" $ do
      it "should be ['00', '01', '11', '10']" $ do
        gray 2 `shouldBe` ["00", "01", "11", "10"]
    describe "gray 3" $ do
      it "should be ['000','001','011','010',´110´,´111´,´101´,´100´]" $ do
        gray 3 `shouldBe` ["000", "001", "011", "010", "110", "111", "101", "100"]
