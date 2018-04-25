module Main where

import Lib

main :: IO ()
main = someFunc

{-@ i :: {x:Integer | x > 5} @-}
i = 3
