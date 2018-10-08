module Avakaya where



  




import Data.Foldable (intercalate)
import Prelude (map, show, (<>), (>>>))

type SIIS = String -> (Int -> Int -> String)

{-- modifier :: Int -> SIIS --} 
{-- modifier val str = (\fg bg -> buildStyle val fg bg <> str) --}

escStart :: String
escStart = "["

{-- buildStyle :: Int -> Int -> Int -> String --}
{-- buildStyle attr fg bg = escStart <> (intercalate ";" (map show [attr, fg, bg])) --}

buildStyle :: Int -> String -> String
buildStyle px str = escStart <> (show px) <>"m"<>str

resetEnd :: String -> String
resetEnd val = val <> (reset "")

reset :: String -> String
reset val = buildStyle 0 val  

bold :: String -> String  
bold = buildStyle 1

dim :: String -> String 
dim = buildStyle  2

underline :: String -> String 
underline = buildStyle  3

blink :: String -> String 
blink = buildStyle  5

reverse :: String -> String 
reverse = buildStyle  7

hidden :: String -> String 
hidden = buildStyle 8 

black :: String -> String
black = buildStyle 30 >>> resetEnd

red :: String -> String
red = buildStyle 31 >>> resetEnd

green :: String -> String
green = buildStyle 32 >>> resetEnd
 
yellow :: String -> String
yellow = buildStyle 33 >>> resetEnd

blue :: String -> String
blue = buildStyle 34 >>> resetEnd

magenta :: String -> String
magenta = buildStyle 35 >>> resetEnd

cyan :: String -> String
cyan = buildStyle 36 >>> resetEnd

white :: String -> String
white = buildStyle 37 >>> resetEnd


bgBlack :: String -> String
bgBlack = buildStyle 40 >>> resetEnd 

bgRed :: String -> String
bgRed = buildStyle 41 >>> resetEnd

bgGreen :: String -> String
bgGreen = buildStyle 42 >>> resetEnd

bgYellow :: String -> String
bgYellow = buildStyle 43 >>> resetEnd

bgBlue :: String -> String
bgBlue = buildStyle 44 >>> resetEnd
 
bgMagenta :: String -> String
bgMagenta  = buildStyle 45 >>> resetEnd

bgCyan :: String -> String
bgCyan = buildStyle 46 >>> resetEnd

bgWhite :: String -> String
bgWhite = buildStyle 47 >>> resetEnd  













