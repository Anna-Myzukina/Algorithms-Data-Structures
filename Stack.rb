=begin
Stack
Create a Stack with two methods push and pop. Use your LinkedList class to keep track of the elements internally.
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
# Start with your code from LinkedList challenge.
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

class Stack
  def push(number)
    # your code here
    number.push()
  end
  
  def pop
    # your code here
  end
end

stack = Stack.new
stack.push(3)
stack.push(5)
puts stack.pop
# => 5

stack.push(2)
stack.push(7)
puts stack.pop
# => 7

puts stack.pop
# => 2

puts stack.pop
# => 3
