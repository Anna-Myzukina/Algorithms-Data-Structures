=begin
https://www.geeksforgeeks.org/construct-a-binary-tree-from-parent-array-representation/#_=_

https://www.educative.io/edpresso/what-is-tree-traversal?affiliate_id=5082902844932096&utm_source=google&utm_medium=cpc&utm_campaign=platform2&utm_content=ad-1-dynamic&gclid=CjwKCAjw7anqBRALEiwAgvGgm9IgTbaucN-Jsl7ndgjCC-vf9rEw0FxL_ndNoS59IPJt788htvnbJRoCJLwQAvD_BwE
https://www.coursera.org/lecture/data-structures/tree-traversal-fr51b
https://ru.wikipedia.org/wiki/%D0%9E%D0%B1%D1%85%D0%BE%D0%B4_%D0%B4%D0%B5%D1%80%D0%B5%D0%B2%D0%B0
https://opendsa-server.cs.vt.edu/ODSA/Books/Everything/html/BinaryTreeTraversal.html#preorder-traversal

Поиск в глубину
Прямой обход
preorder(node)
  if (node = null)
    return
  visit(node)
  preorder(node.left)
  preorder(node.right)
iterativePreorder(node)
  if (node = null)
    return
  s ← empty stack
  s.push(node)
  while (not s.isEmpty())
    node ← s.pop()
    visit(node)
    //правый потомок заносится первым, так что левый потомок обрабатывается первым
    if (node.right ≠ null)
      s.push(node.right)
    if (node.left ≠ null)
      s.push(node.left)
Центрированный обход
inorder(node)
  if (node = null)
    return
  inorder(node.left)
  visit(node)
  inorder(node.right)
iterativeInorder(node)
  s ← empty stack
  while (not s.isEmpty() or node ≠ null)
    if (node ≠ null)
      s.push(node)
      node ← node.left
    else
      node ← s.pop()
      visit(node)
      node ← node.right
Обратный обход
postorder(node)
  if (node = null)
    return
  postorder(node.left)
  postorder(node.right)
  visit(node)
iterativePostorder(node)
  s ← empty stack
  lastNodeVisited ← null
  while (not s.isEmpty() or node ≠ null)
    if (node ≠ null)
      s.push(node)
      node ← node.left
    else
      peekNode ← s.peek()
      // если правый потомок существует и обход пришёл из левого потомка, двигаемся вправо
      if (peekNode.right ≠ null and lastNodeVisited ≠ peekNode.right)
        node ← peekNode.right
      else
        visit(peekNode)
        lastNodeVisited ← s.pop()
Все приведённые имплементации требуют стек,
пропорциональный высоте дерева, который является стеком вызовов для
рекурсивной имплементации и стеком родителей для итеративной.
В плохо сбалансированном дереве этот стек может быть значительным.
В итеративной имплементации мы можем избавиться от стека путём
сохранения для каждого узла его родителя или с помощью прошивки дерева (следующий раздел).



Instructions from your teacher:
Creating a Tree

The previous challenge showed how to store a Tree in an Array. But how do you convert a Tree from an Array to the more-standard Node form? 

Implementing a Tree

To implement a Tree, we'll create a Node class. It will store an integer of Data, and point to 2 child Nodes. 

class Node
  attr_reader :data
  attr_accessor :left, :right

  def initialize(data)
    @data = data
  end

end


Create a Node node from a given cell i in the array: Node node = new Node(array[i]);
Create the children Nodes from their positions in the array. (See step #1).
Assign the children Nodes to node.left and node.right. 

You first create a Node, and then you create children Nodes in the  same manner. 
This sounds like a recursive function will be needed!

As  mentioned, since trees are recursive structures, recursive functions are  used to navigate them. 

Here's the above algorithm:

def array_to_tree(array, i)
  return nil if i >= array.length || array[i] == 0

  node = Node.new(array[i])
  node.left = array_to_tree(array, 2*i+1)
  node.right = array_to_tree(array, 2*i+2)

  node
end

Traversing a Tree in Pre-order

Pre-order traversal means you process a Node and then process its sub-trees. 

Here is the pre-order algorithm:

def pre_order(node)
  if node == nil
    return ''
  end
  
  "#{node.data} #{pre_order(node.left)} #{pre_order(node.right)}"
end
 
Challenge

You will be given an array as input, which represents a Tree. 
Process the array into a Tree of Nodes, as shown above. Then go through the tree and print it in post-order.
Print each number space-separated.

Example test case

tree = array_to_tree([10, 1, 2, 3, 4, 5, 6])

puts post_order(tree)
#=> 3 4 1 5 6 2 10
=end
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
  node.left = array_to_tree(array, 2 * i + 1)
  node.right = array_to_tree(array, 2 * i + 2)

  node
end

def pre_order(node)
  if node == nil
    return ""
  end

  result = "#{node.data} "
  result += pre_order(node.left)
  result += pre_order(node.right)
end

def post_order(node)
  node.nil? ? "" : "#{post_order(node.left)}#{post_order(node.right)} #{node.data}"
end

tree = array_to_tree([10, 1, 2, 3, 4, 5, 6], 0)

puts pre_order(tree)

puts post_order(tree)
#=> 3 4 1 5 6 2 10
