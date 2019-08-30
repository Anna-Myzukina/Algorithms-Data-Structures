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
A binary search tree is a binary tree where the nodes are assigned values that follow these rules:
1. no duplicate values, each value is unique
2. the left subtree of a node only contains values less than itself
3. the right subtree of a node only contain values greater than itself


Data structures, trees and Ruby. : https://medium.com/@jessgreb01/data-structures-trees-and-ruby-2959c47ffa26
=end

def search_tree?(tree)
# your code here
treeNew = BinarySeachTree.new
tree.each do |value|
treeNew.insert(value)
end
traverse = tree.pre_order(treeNew.root)
traverse.rstrip
end

class Node
attr_reader :data
attr_accessor :left, :right

def initialize(data=nil)
@data = data
left = nil
right = nil
end

def insert(key)
if key <=@data
@left.nil? ? @left = Node.new(key) : @left.insert(key) 
elsif key >@data
@right.nil? ? @right = Node.new(key) : @right.insert(key)
end
end
end

class BinarySeachTree
attr_accessor :root

def initialize
@root = nil
end

def insert(key)
if @root.nil?
@root = Node.new(key)
else
@root.insert(key)
end
end

def pre_order(node)
if node == nil
return ''
end 
result = "#{node.data} "
result += pre_order(node.left)
result += pre_order(node.right)
end
end

puts search_tree?([10, 4, 12])
# => true

puts search_tree?([10, 5, 7])
# => false

