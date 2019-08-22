=begin
Is it a Search Tree?
Given a binary tree, can you determine if it is a proper Binary Search Tree?

In a binary search tree, every descendant to the right of node P must be greater than P, 
and every descendant to the left of P must be less than P.

The input will be given as a list, as in the previous exercises.

Challenge
Return true if the given tree is a proper binary search tree, and false otherwise.

Example
tree = [10, 4, 12]

search_tree?(tree)
# => true


## A program to check if a binary tree is BST or not
A binary search tree (BST) is a node based binary tree data structure which has the following properties.
• The left subtree of a node contains only nodes with keys less than the node’s key.
• The right subtree of a node contains only nodes with keys greater than the node’s key.
• Both the left and right subtrees must also be binary search trees.

From the above properties it naturally follows that:
• Each node (item in the tree) has a distinct key.

https://practice.geeksforgeeks.org/problems/check-for-bst/1
=end
