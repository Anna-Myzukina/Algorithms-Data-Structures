=begin

Min Stack
Create a Stack that contains the standard push and pop methods. 
It should also contain another method min that returns the minimum number in the Stack.

Extra Credit

All operations should take O(1) time.

Example

This is an example of a test case:

stack = Stack.new

stack.push(3)
stack.push(5)
puts stack.min
# => 3

stack.pop
stack.push(7)
puts stack.min
# => 3


Create a Stack with two methods push and pop. Use your LinkedList class to keep track of the elements internally.
this article explain 
http://rubymonk.com/learning/books/4-ruby-primer-ascent/chapters/33-advanced-arrays/lessons/86-stacks-and-queues
=end


# Start with your code from LinkedList challenge.
class Stack
  def initialize
    @store = Array.new
end
  def push(number)
    # your code here
    @store.push(number)
  end
  
  def pop
    # your code here
    @store.pop
  end
  
  def min
    # your code here
    @store.min
  end

end

stack = Stack.new
stack.push(3)
stack.push(5)
puts stack.min
# => 3

stack.pop
stack.push(7)
puts stack.min
# => 3

stack.push(2)
puts stack.min
# => 2

stack.pop
puts stack.min
# => 3
=begin
teacher version :
class Stack

  def initialize
    @stack = []
    @min = nil
  end
  
  def push(number)
    # your code here
    @stack << number
  end
  
  def pop
    # your code here
    @stack.pop
  end
  
  def min
    # your code here
    @min
  end

end

stack = Stack.new
stack.push(3)
stack.push(5)
puts stack.min
# => 3

stack.pop
stack.push(7)
puts stack.min
# => 3

stack.push(2)
puts stack.min
# => 2

stack.pop
puts stack.min
# => 3


=end
