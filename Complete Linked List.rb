=begin
You need to create the methods add_at & remove.
# Start with your code from last challenge.



list = LinkedList.new

list.add(3)
list.add(5)
list.add_at(1, 11)
list.add_at(0, 13)

puts list.get(2)
# => 11

puts list.get(3)
# => 5

Instructions from your teacher:
Linked List  

Implement the following two methods in your own LinkedList class. You should start with your code from yesterday:  

add_at(index, item) - Add an item to a specific location in the list. 
The index will be a positive integer that represents the index where you should insert item. 
Zero is the position of the first element of the list. 
remove(index) - Remove an item from a specific location in the List.  

You should also implement a private helper method get_node(index) to return the Node at a specific index.  

You should have already completed these two methods in the previous challenge:  
add(number) - Add number to the end of your LinkedList. 
get(index) - Get the number located at index.  

Example  

This is an example of a test case:  

list = LinkedList.new

list.add(3)
list.add(5)
list.add_at(1, 11)
list.add_at(0, 13)
puts list.get(2)
# => 11

puts list.get(3)
# => 5

The add operations create the list: [13, 3, 11, 5]. The get operation, gets the numbers located at position 2 and 3.  
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
   @size = 0

 end

 def add(number)
   # your code here
   node = Node.new(number)
        @head ? (@tail.next_node = node) : (@head = node)
        @tail = node
 end

 def get(index)
    if index < 0
            nil
        else
            node = @head
            index.times { node = node.next_node }
            node.value
        end
 end



 def get_node(index)
   i = 0
   node = @head
   while i < index
     i += 1
     node = node.next_node
   end
   return node
 end

 def nodes(node = @head)
   until node.nil?
     result = yield(node)
     node = node.next_node
   end
   result
 end

  def at(index)
   index += @size if index < 0
   counter = 0
   nodes { |node| return node if counter == index; counter += 1 }
 end


 def add_at(index, item)

   node = Node.new(item, at(index))
   add(node) if index > @size
   index.zero? ? @head = node : at(index - 1).next_node = node

    end
            


 def remove(index)
   if index < 0
     nil
   else
     node = @head
            if index == 0
                @head = node.next_node
            else
                (index - 1).times { node = node.next_node }
                node.next_node = node.next_node.next_node
            end
   end
 end

end

list = LinkedList.new

list.add(3)
list.add(5)
list.add_at(1, 11)
list.add_at(0, 13)

puts list.get(0)

puts list.get(2)
# => 5
puts list.get(3)
