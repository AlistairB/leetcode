module Main where

import Criterion.Main
import Lib

main :: IO ()
main = defaultMain [
    bgroup "twoSum" [
      bench "5" $ nf zomg 5
    ]
  ]
