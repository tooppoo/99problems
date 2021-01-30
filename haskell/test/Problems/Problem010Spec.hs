module Problems.Problem010Spec where

import Test.Hspec
import Problems.Problem010

spec = do
  describe "Problem010" $ do
    describe "encode \"aaaabccaadeeee\"" $ do
      it "should be [(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')]" $ do
        encode "aaaabccaadeeee" `shouldBe` [(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')]
    describe "encode [1, 1, 2, 3, 3, 4, 4, 4, 5]" $ do
      it "should be [(2,1), (1,2), (2,3), (3,4), (1,5)]" $ do
        encode [1, 1, 2, 3, 3, 4, 4, 4, 5] `shouldBe` [(2,1), (1,2), (2,3), (3,4), (1,5)]
