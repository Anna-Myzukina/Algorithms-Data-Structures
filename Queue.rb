=begin
Queue
The Queue class implements multi-producer, multi-consumer queues. 
It is especially useful in threaded programming when information must be exchanged safely between multiple threads. 
The Queue class implements all the required locking semantics.

The class implements FIFO type of queue. In a FIFO queue, the first tasks added are the first retrieved.

Example:

                queue = Queue.new

                producer = Thread.new do
                  5.times do |i|
                     sleep rand(i) # simulate expense
                     queue << i
                     puts "#{i} produced"
                  end
                end

                consumer = Thread.new do
                  5.times do |i|
                     value = queue.pop
                     sleep rand(i/2) # simulate expense
                     puts "consumed #{value}"
                  end
                end
                
-Public Class Methods
new()
Creates a new queue instance.

-Public Instance Methods:
<<(p1)
Alias for: push
clear()
Removes all objects from the queue.

close
Closes the queue. A closed queue cannot be re-opened.

After the call to close completes, the following are true:

closed? will return true

close will be ignored.

calling enq/push/<< will raise an exception.

when empty? is false, calling deq/pop/shift will return an object from the queue as usual.

ClosedQueueError is inherited from StopIteration, so that you can break loop block.

Example:

            q = Queue.new
            Thread.new{
              while e = q.deq # wait for nil to break loop
                # ...
              end
            }
            q.close
        closed?
Returns true if the queue is closed.

deq(*args)
Alias for: pop
empty?
Returns true if the queue is empty.

enq(p1)
Alias for: push
length
size
Returns the length of the queue.

Also aliased as: size
num_waiting()
Returns the number of threads waiting on the queue.

pop(non_block=false)
deq(non_block=false)
shift(non_block=false)
Retrieves data from the queue.

If the queue is empty, the calling thread is suspended until data is pushed onto the queue.
If non_block is true, the thread isn't suspended, and ThreadError is raised.

Also aliased as: deq, shift
push(object)
enq(object)
<<(object)
Pushes the given object to the queue.

Also aliased as: enq, <<
shift(*args) click to toggle source
Alias for: pop
size()
Alias for: length

=end

=begin
Instructions from your teacher:
Queue
Create a Queue with the two methods add and remove. Use your LinkedList class to keep track of the elements internally.
In this challenge, there's one more detail: If remove is called on the empty Queue, return -1.

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

=end

class Node
	#your node code here
	attr_accessor :value, :next_node

	def initialize(value, next_node = nil)
		@value = value
		@next_node = next_node
	end
end

class LinkedList
  def add(number)
  	new_node = Node.new(number)

  	if @head.nil?
	  	@head = new_node
		  @tail = new_node
	  else
		  @tail.next_node = new_node
		  @tail = new_node
	  end
  end

  def add_at(index, number)
  	new_node = Node.new(number)

  	if @head.nil?
	  	@head = new_node
		  @tail = new_node
	  elsif index == 0
		  new_node.next_node = @head
		  @head = new_node
	  else
		  previous_node = get_node(index - 1)
		  next_node = previous_node&.next_node
		  previous_node.next_node = new_node
		  new_node.next_node = next_node
	  end
  end
  
  def get(index)
  	node = get_node(index)
  	
  	node&.value
  end
  
  def remove(index)
    if @head == nil
      return -1
    end
  	if index == 0
		  value = @head.value
  		@head = @head&.next_node
  		return value
  	end
  	
  	previous_node = get_node(index - 1)
  	value = previous_node.next_node.value
  	previous_node.next_node = previous_node&.next_node&.next_node

  	if previous_node == @tail
  		@tail = previous_node
  	end
  	
  	value
  end

  
  private
  
  def get_node(index)
  	node = @head
  	
  	while index > 0 && node
  	  node = node.next_node
  	  index -= 1
  	end
  	
  	node
  end
end



class Queue
  def initialize
    @list = LinkedList.new
  end
  def add(number)
    @list.add(number)
  end
  
  def remove
    return @list.remove(0)
  end
end

queue = Queue.new

queue.add(3)
queue.add(5)
puts queue.remove
# => 3

queue.add(2)
queue.add(7)
puts queue.remove
# => 5

puts queue.remove
# => 2

puts queue.remove
# => 7

puts queue.remove
# => -1
