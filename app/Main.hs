module Main where

import Criterion.Main

import BuySellStock

main :: IO ()
main = defaultMain [
    bgroup "BuySellStock" [
      bench "naive1" $ nf BuySellStock.naive [7,1,5,3,6,4],
      bench "naive2" $ nf BuySellStock.naive [1..1000000]
    ]
  ]
