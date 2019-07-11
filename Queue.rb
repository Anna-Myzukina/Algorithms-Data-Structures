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
=end
