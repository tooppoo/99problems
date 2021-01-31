module Problems.Problem041Spec where

import Test.Hspec
import Problems.Problem041

spec = do
  describe "Problem041" $ do
    describe "goldBachList 9 20" $ do
      it "should be [(3,7),(5,7),(3,11),(3,13),(5,13),(3,17)]" $ do
        goldBachList 9 20 `shouldBe` [(3,7),(5,7),(3,11),(3,13),(5,13),(3,17)]
    describe "goldBachList' 4 2000 50" $ do
      it "should be [(73,919),(61,1321),(67,1789),(61,1867)]" $ do
        goldBachList' 4 2000 50 `shouldBe` [(73,919),(61,1321),(67,1789),(61,1867)]
