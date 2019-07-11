=begin 

Lists  

Create your own LinkedList  class for storing integers which should include two methods:  
add(number) - Add a new Node to the end of the list with a value of number. Nothing needs to be returned. 
get(index) - Return the value of the Node at position `index` in the List.   
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

 def initialize(value, next_node = nil)
      @value = value
   @next_node = next_node
 end
end

class LinkedList
 #setup head and tail
 attr_accessor :head, :tail

 def initialize(value = nil)
   @head = Node.new(value)
 end

 def printlist
   current = head
   while current
     puts current.value
     current = current.next_node
   end
 end

 def add(number)
   # your code here
   current = head
   if current.nil?
         current = Node.new(number)

   else
   while current.next_node
   current = current.next_node
   end
   current.next_node = Node.new(number)
   end
 end

 def get(index)
   # your code here
    current = head
    if index == 0
      return current.next_node.value
    else
     idx = 0

     while (idx != (index)) && (current.next_node)
     current = current.next_node
     idx += 1
     end
     return current.next_node.value
   end
 end
end

list = LinkedList.new

list.add(3)
list.add(5)
#list.printlist
puts list.get(1)
