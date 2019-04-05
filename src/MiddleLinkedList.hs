module MiddleLinkedList where

{-
https://leetcode.com/problems/middle-of-the-linked-list/

Given a non-empty, singly linked list with head node head, return a middle node of linked list.

If there are two middle nodes, return the second middle node.

ex1

Input: [1,2,3,4,5]
Output: Node 3 from this list (Serialization: [3,4,5])
The returned node has value 3.  (The judge's serialization of this node is [3,4,5]).
Note that we returned a ListNode object ans, such that:
ans.val = 3, ans.next.val = 4, ans.next.next.val = 5, and ans.next.next.next = NULL.

ex2

Input: [1,2,3,4,5,6]
Output: Node 4 from this list (Serialization: [4,5,6])
Since the list has two middle nodes with values 3 and 4, we return the second one.

 * Definition for singly-linked list.
 * class ListNode(var _x: Int = 0) {
 *   var next: ListNode = null
 *   var x: Int = _x
 * }

-}

naive :: [Int] -> Int
naive [] = error "cannot be empty"
naive [a] = a
naive list = list !! midPoint
  where
    listLength = length list
    midPoint = floor $ (fromIntegral listLength) / 2

-- fasts iterate twice as fast.
-- Once we reach the end of the list we can take the current element from the slow iterating list
better :: [Int] -> Int
better [] = error "cannot be empty"
better xs = go xs xs
  where
    go :: [Int] -> [Int] -> Int
    go (x:_) []           = x
    go (x:_) [a]          = x
    go (_:slows) (_:_:fasts) = go xs fasts