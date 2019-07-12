module LowestCommonAncestor where

-- https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-search-tree/

data Tree a =
  Nil
  | Node (Tree a) a (Tree a)

-- test1 :: Tree Int
-- test1 = Node (Node (Node (Nil 0 (Node (Node Nil 3 Nil) 4 (Node Nil 5 Nil))))) 6 (Node (Node (Node Nil 7 Nil) 8 (Node Nil 9 Nil)))

-- getLCA :: Int -> Int -> Tree Int -> Int
-- getLCA _ _ Nil = 0
-- getLCA p q n@(Node ltree x rtree) =
--   | p < x && (treeHasNode p ltree && treeHasNode q ltree) = x
--   | q < x && (treeHasNode p ltree && treeHasNode p ltree) = x
--   |   = getNode match right
--   | match < a = getNode match left
--   where
--     lTreeLCA = getLCA p q ltree
--     rTreeLCA = getLCA p q rtree

treeHasNode :: Int -> Tree Int -> Bool
treeHasNode _ Nil = False
treeHasNode a (Node ltree x rtree)
  | x == a    = True
  | otherwise = treeHasNode a ltree || treeHasNode a rtree
