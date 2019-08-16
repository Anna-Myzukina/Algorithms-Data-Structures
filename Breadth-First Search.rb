=begin
Challenge
Return an array with the given graph in BFS order.

Sample Input
graph = {
  0 => [2], 
  1 => [4], 
  2 => [5, 0, 3], 
  3 => [2], 
  4 => [1, 5], 
  5 => [4, 2]
}

bfs(graph)
# => [0, 2, 5, 3, 4, 1]


teachers variant:
Lists  

Create your own LinkedList  class for storing integers which should include two methods:  
add(number) - Add a new Node to the end of the list with a value of number. Nothing needs to be returned. 
get(index) - Return the value of the Node at position `index` in the List.   

Example  

This is an example of a test case:  

list = LinkedList.new

list.add(3)
list.add(5)
puts list.get(1)
# => 5


The 2 add operations create the list: [3, 5]. 
The get operation, gets the number located at position 1. 


class Node
  attr_accessor :value, :next_node
  
  def initialize(value, next_node = nil)
	  @value = value
    @next_node = next_node
  end
end

class LinkedList
  #setup head and tail

  def add(number)
    # your code here
    new_node = Node.new(number)
	
  	if @head.nil?
	  	@head = new_node
		  @tail = new_node
	  else
		  @tail.next_node = new_node
		  @tail = new_node
	  end
  end

  def get(index)
    #your code here
    node = @head
  	
  	while index > 0 && node
  	  node = node.next_node
  	  index -= 1
  	end
  	
  	node.value
  end
end

list = LinkedList.new
list.add(3)
list.add(5)
puts list.get(1)

=end

class Node
 attr_accessor :value, :next_node

 def initialize(value = nil, next_node = nil)
      @value = value
      @next_node = next_node
 end
end

class LinkedList
 #setup head and tail

 def initialize
   @head = nil
   @tail = nil
 end


