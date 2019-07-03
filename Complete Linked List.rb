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

add_at(index, item) - Add an item to a specific location in the list. The index will be a positive integer that represents the index where you should insert item. Zero is the position of the first element of the list. 
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
