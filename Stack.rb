=begin
Stack
Create a Stack with two methods push and pop. Use your LinkedList class to keep track of the elements internally.
=end


# Start with your code from LinkedList challenge.
class Node
   attr_accessor :value, :next_node

   def initialize(value=nil, next_node=nil)
     @value = value
     @next_node = next_node
   end
 end

 class Stack

   def initialize
     @head = nil
   end

   def push(value)
     @head = Node.new(value, @head)
   end

   def pop
     value = @head.value
     @head = @head.next_node
     value
   end

 end

stack = Stack.new
puts stack.push(3)
puts  stack.push(5)
puts stack.pop
# => 5

puts stack.push(2)
puts stack.push(7)
puts stack.pop
# => 7

puts stack.pop
# => 2

puts stack.pop
# => 3
