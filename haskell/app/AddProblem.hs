module Main (main) where

import System.Environment (getArgs)
import Text.Printf

main :: IO ()
main = do
  args <- getArgs

  let strN = head args
      n = read strN :: Int
  writeFile ("./src/Problems/Problem%03d.hs" <| n) (problem n)
  writeFile ("./test/Problems/Problem%03dSpec.hs" <| n) (spec n)

problem :: Int -> String
problem n = "module Problems.Problem%03d where" <| n

spec :: Int -> String
spec num = concat [
    "module Problems.Problem%03dSpec where\n" <| num,
    "\n",
    "import Test.Hspec\n",
    "import Problems.Problem%03d\n" <| num,
    "\n",
    "spec = do\n",
    "  describe \"Problem%03d\" $ do" <| num
  ]

(<|) :: String -> Int -> String
(<|) template index = printf template index
