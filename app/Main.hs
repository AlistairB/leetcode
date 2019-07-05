module Main where

import Criterion.Main

import BuySellStock
import MaxConsecutiveOnes

main :: IO ()
main = defaultMain [
    bgroup "BuySellStock" [
      bench "naive1" $ nf BuySellStock.naive [7,1,5,3,6,4],
      bench "naive2" $ nf BuySellStock.naive [1..1000000]
    ]
    -- bgroup "MaxConsecutiveOnes" [
    --   bench "naive1" $ nf (MaxConsecutiveOnes.maxConsecutive 2 [One,One,One,Zero,Zero,Zero,One,One,One,One,Zero]),
    --   bench "naive2" $ nf (MaxConsecutiveOnes.maxConsecutive 3 [Zero,Zero,One,One,Zero,Zero,One,One,One,Zero,One,One,Zero,Zero,Zero,One,One,One,One])
    -- ]
  ]
