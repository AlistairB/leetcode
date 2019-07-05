module MaxConsecutiveOnes where

-- maxConsecutive 2 [One,One,One,Zero,Zero,Zero,One,One,One,One,Zero]
-- 6

-- maxConsecutive 3 [Zero,Zero,One,One,Zero,Zero,One,One,One,Zero,One,One,Zero,Zero,Zero,One,One,One,One]
-- 10

data BinaryNumber = Zero | One

maxConsecutive :: Int -> [BinaryNumber] -> Int
maxConsecutive = go 0

-- recurse trying to find the max combination possible from each starting point in the list
go :: Int -> Int -> [BinaryNumber] -> Int
go currentMax _ [] = currentMax
go currentMax flippableCount currentList@(x:xs) = if currentCount > currentMax then
                                                    go currentCount flippableCount xs
                                                  else
                                                    go currentMax flippableCount xs
  where
    currentCount = expendFlips flippableCount currentList

-- for a given list, determine the max chain possible when going from the start
expendFlips :: Int -> [BinaryNumber] -> Int
expendFlips _ []        = 0
expendFlips 0 (Zero:_)  = 0
expendFlips remainingFlippableCount (Zero:xs) = 1 + expendFlips (remainingFlippableCount - 1) xs
expendFlips remainingFlippableCount (One:xs) = 1 + expendFlips remainingFlippableCount xs
