module Lib where

zomg :: Int -> Int
zomg a = sum $ fmap (+a) [1..1000]
