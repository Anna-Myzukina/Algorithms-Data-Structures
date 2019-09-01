=begin

Алгоритмы и структуры данных для начинающих: двоичное дерево поиска:
https://tproger.ru/translations/binary-search-tree-for-beginners/
 What is a Binary Search Tree?:  https://www.freecodecamp.org/news/data-structures-101-binary-search-tree-398267b6bff0/

A binary search tree is a binary tree where the nodes are assigned values that follow these rules:
1. no duplicate values, each value is unique
2. the left subtree of a node only contains values less than itself
3. the right subtree of a node only contain values greater than itself
=end


def binary_search_tree(array)
# your code here
tree = BinarySeachTree.new
array.each do |value|
tree.insert(value)
end
traverse = tree.pre_order(tree.root)
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

puts binary_search_tree([8, 3, 10, 1, 6, 14, 4, 7, 13])
# => "8 3 1 6 4 7 10 14 13"
