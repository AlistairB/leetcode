module BuySellStock where

-- https://leetcode.com/problems/best-time-to-buy-and-sell-stock/

naive :: [Int] -> Int
naive theList = go theList (head theList) 0
  where
    go :: [Int] -> Int -> Int -> Int
    go [] _ biggestDiff = biggestDiff
    go (x:xs) comparator biggestDiff
      | x < comparator            = go xs x biggestDiff
      | currentDiff > biggestDiff = go xs comparator currentDiff
      | otherwise                 = go xs comparator biggestDiff
      where
        currentDiff = x - comparator