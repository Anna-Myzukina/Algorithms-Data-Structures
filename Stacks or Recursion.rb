=start
Instructions from your teacher:
Stacks or Recursion
While certain coding problems can be solved most effectively with recursion, you can also learn how to do them without it.

Trees, Recursion & Stacks

Trees are recursive structures, so most tree algorithms use recursion to 'branch out' through the tree.
Q: How does the compiler keep track of all these recursive calls?
A: Each function call is placed on a Stack, and is popped off the stack as the results are returned.
Q: Could I use my own Stack to track results instead of using recursion?
A: Yes, you can always replace recursion with a Loop and a  Stack. 
It will usually make your code much messier, but there are rare  occasions when you'll want to do it.

Challenge

Find How Tall is the Tree? by using a Stack and a Loop.

Details

The height of a Tree is the number of Nodes from the Root to the lowest Leaf. The Tree does not need to be balanced.
For example, in the tree below, the height is 4:





You will be given a Tree stored in a list. Find and print the height of the Tree.

Examples

The following are 3 test cases:

puts tree_height([2, 7, 5, 2, 6, 0, 9])
# => 3

puts tree_height([1, 7, 5, 2, 6, 0, 9, 3, 7, 5, 11, 0, 0, 4, 0])
# => 4

puts tree_height([5, 3, 2, 9, 0, 0, 7, 0, 0, 0, 0, 0, 0, 5, 0])
# => 4



Find Height of Binary Tree represented by Parent array
A given array represents a tree in such a way that the array value gives the parent node of that particular index.
The value of the root node index would always be -1. Find the height of the tree.
Height of a Binary Tree is number of nodes on the path from root to the deepest leaf node, 
the number includes both root and leaf.

Input: parent[] = {1 5 5 2 2 -1 3}
Output: 4
The given array represents following Binary Tree 
         5
        /  \
       1    2
      /    / \
     0    3   4
         /
        6 


Input: parent[] = {-1, 0, 0, 1, 1, 3, 5};
Output: 5
The given array represents following Binary Tree 
         0
       /   \
      1     2
     / \
    3   4
   /
  5 
 /
6
Source: Amazon Interview experience | Set 128 (For SDET)

We strongly recommend to minimize your browser and try this yourself first.

A simple solution is to first construct the tree and then find height of the constructed binary tree.
The tree can be constructed recursively by first searching the current root, 
then recurring for the found indexes and making them left and right subtrees of root. 
This solution takes O(n2) as we have to linearly search for every node.

An efficient solution can solve the above problem in O(n) time. 
The idea is to first calculate depth of every node and store in an array depth[]. 
Once we have depths of all nodes, we return maximum of all depths.
1) Find depth of all nodes and fill in an auxiliary array depth[].
2) Return maximum value in depth[].

Following are steps to find depth of a node at index i.
1) If it is root, depth[i] is 1.
2) If depth of parent[i] is evaluated, depth[i] is depth[parent[i]] + 1.
3) If depth of parent[i] is not evaluated, recur for parent and assign depth[i] as depth[parent[i]] + 1 (same as above).

Following is the implementation of above idea.Find Height of Binary Tree represented by Parent array
A given array represents a tree in such a way that the array value gives the parent node of that particular index. 
The value of the root node index would always be -1. Find the height of the tree.
Height of a Binary Tree is number of nodes on the path from root to the deepest leaf node,
the number includes both root and leaf.

Input: parent[] = {1 5 5 2 2 -1 3}
Output: 4
The given array represents following Binary Tree 
         5
        /  \
       1    2
      /    / \
     0    3   4
         /
        6 


Input: parent[] = {-1, 0, 0, 1, 1, 3, 5};
Output: 5
The given array represents following Binary Tree 
         0
       /   \
      1     2
     / \
    3   4
   /
  5 
 /
6
Source: Amazon Interview experience | Set 128 (For SDET)

We strongly recommend to minimize your browser and try this yourself first.

A simple solution is to first construct the tree and then find height of the constructed binary tree.
The tree can be constructed recursively by first searching the current root, 
then recurring for the found indexes and making them left and right subtrees of root. 
This solution takes O(n2) as we have to linearly search for every node.

An efficient solution can solve the above problem in O(n) time. 
The idea is to first calculate depth of every node and store in an array depth[]. 
Once we have depths of all nodes, we return maximum of all depths.
1) Find depth of all nodes and fill in an auxiliary array depth[].
2) Return maximum value in depth[].

Following are steps to find depth of a node at index i.
1) If it is root, depth[i] is 1.
2) If depth of parent[i] is evaluated, depth[i] is depth[parent[i]] + 1.
3) If depth of parent[i] is not evaluated, recur for parent and assign depth[i] as depth[parent[i]] + 1 (same as above).

Following is the implementation of above idea.

Data Structures 101: Binary Search Tree:
https://www.freecodecamp.org/news/data-structures-101-binary-search-tree-398267b6bff0/
=end
