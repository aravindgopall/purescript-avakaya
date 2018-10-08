module Main where

import Prelude

import Data.Foldable (intercalate)
import Effect (Effect)
import Effect.Console (log)


buildStyle :: Int -> Int -> Int -> String
buildStyle attr fg bg = "["<> (intercalate ";" (map show [attr, fg, bg]))

main :: Effect Unit
main = do
  log $ (buildStyle 2 31 42) <> "mHello sailor!" -- red and green bg
