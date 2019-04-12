module BinarySearch where

-- https://leetcode.com/problems/search-in-a-binary-search-tree/

data Tree a =
  Nil
  | Node (Tree a) a (Tree a)

getNode :: Ord a => a -> Tree a -> Tree a
getNode _ Nil = Nil
getNode match node@(Node left a right)
  | match == a = node
  | match > a  = getNode match right
  | match < a = getNode match left