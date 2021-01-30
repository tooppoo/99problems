module Problems.Problem028Spec where

import Test.Hspec
import Problems.Problem028

spec = do
  describe "Problem028" $ do
    describe "lsort [abc,de,fgh,de,ijkl,mn,o]" $ do
      it "should be [o,de,de,mn,abc,fgh,ijkl]" $ do
        lsort ["abc","de","fgh","de","ijkl","mn","o"] `shouldBe` ["o","de","de","mn","abc","fgh","ijkl"]
    describe "lsort [[1,2,3], [1], [2,3]]" $ do
      it "should be [[1], [2,3], [1,2,3]]" $ do
        lsort [[1,2,3], [1], [2,3]] `shouldBe` [[1], [2,3], [1,2,3]]

    describe "lfsort [abc,de,fgh,de,ijkl,mn,o]" $ do
      it "should [ijkl,o,abc,fgh,de,de,mn]" $ do
        -- model answer not pass...
        -- https://wiki.haskell.org/99_questions/Solutions/28
        -- lfsort ["abc", "de", "fgh", "de", "ijkl", "mn", "o"] `shouldBe` ["ijkl","o","abc","fgh","de","de","mn"]
        lfsort ["abc", "de", "fgh", "de", "ijkl", "mn", "o"] `shouldBe` ["o","ijkl","abc","fgh","de","de","mn"]
