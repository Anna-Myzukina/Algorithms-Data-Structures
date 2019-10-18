=begin
https://www.youtube.com/watch?v=LU4fGD-fgJQ

Is it balanced?
Can you check if a tree is a height-balanced?

In this challenge, a tree is height-balanced if the maximum and minimum path from any node to a terminal (null node)
descendant differs by at most 1.

For example, this tree is not height-balanced, since the minimum path going down from 5 (to the left) is 2 less than
the maximum path from 5 (to 9 and 4).


Challenge
Return true if a given tree is height-balanced and false otherwise.

Example
tree = [1, 2, 0, 3, 4, 0, 0]

balanced_tree?(tree)
# => false

Get stuck and need some hint?
Check below link: 
https://gitlab.com/microverse/guides/coding_challenges/hints/blob/master/challenges/tress_and_graphs/is-it-balanced.md
=end

class Node
 attr_reader :data
 attr_accessor :left, :right
 def initialize(data)
   @data = data
 end
end
def array_to_tree(array, i=0)
 return nil if i >= array.length || array[i] == 0
 node = Node.new(array[i])
 node.left = array_to_tree(array, 2*i+1)
 node.right = array_to_tree(array, 2*i+2)
 node
end
def height(node)
 return 0 if node.nil?
 return 1 if node.left == nil && node.right == nil
[height(node.left), height(node.right)].max + 1
end
def balanced_tree? (array)
 root = array_to_tree(array)
 stack = [root]
 until stack.empty?
   current = stack.pop
   left_height = height(current.left)
   right_height = height(current.right)
   return false if (left_height - right_height).abs > 1
   stack.push(current.right) unless current.right.nil?
   stack.push(current.left) unless current.left.nil?
 end
 true
end
