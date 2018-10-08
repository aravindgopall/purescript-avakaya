module Test.Main where

import Prelude

import Avakaya (bgBlack, bgRed, black, blue, cyan, green, magenta, red, white, yellow)
import Effect (Effect)
import Effect.Console (log)

main :: Effect Unit
main = do
  log $ black "Black"
  log $ red "RED"
  log $ green "GREEN"
  log $ yellow "YELLOW"
  log $ blue "BLUE"
  log $ magenta "MAGENTA"
  log $ cyan "CYAN"
  log $ white "WHITE"
  log $ bgBlack "BGBLACK"
  log $ bgRed "BGRED"
  log <<< bgRed <<< yellow $ "YELLOWWITHRED"
  log "You should add some tests."
