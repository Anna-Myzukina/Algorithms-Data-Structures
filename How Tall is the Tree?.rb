=brgin
This articles will help:
https://www.freecodecamp.org/news/how-to-calculate-a-binary-trees-height-using-array-iteration-in-ruby-63551c6c65fe/
https://medium.com/@jarrian.mclean/congrats-you-failed-your-first-code-challenge-1934589da7b9

=end

def binary_tree_height(array_tree, index = 0)
  # write your code here
  return 0 if array_tree[index].nil? or array_tree[index] == 0
      
       left_child_height = binary_tree_height(array_tree, 2*index + 1)  
       right_child_height = binary_tree_height(array_tree, 2*index + 2)  
       total_height = 1 + [left_child_height, right_child_height].max

end

puts binary_tree_height([2, 7, 5, 2, 6, 0, 9])
# => 3



=begin
Teachers solution

class Node
  attr_reader :data
  attr_accessor :left, :right

  def initialize(data)
    @data = data
  end
end

def array_to_tree(array, i)
  return nil if i >= array.length || array[i] == 0

  node = Node.new(array[i])
  node.left = array_to_tree(array, 2*i+1)
  node.right = array_to_tree(array, 2*i+2)

  node
end

def binary_tree_height(array_tree)
  # write your code here
  tree = array_to_tree(array_tree, 0)
  
  recursive_tree_height(tree)
end

def recursive_tree_height(tree)
  return 0 if tree.nil?
  return 1 if tree.left == nil && tree.right == nil
  
  [recursive_tree_height(tree.left), recursive_tree_height(tree.right)].max + 1
end

puts binary_tree_height([2, 7, 5, 2, 6, 0, 9])
# => 3
=end
