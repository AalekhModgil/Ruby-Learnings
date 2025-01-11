# Array operations :- 
# push  :- add at last
# pop   :- remove and return last
# shift :- remove and return first
# unshift :- add at first

# Implementation of queue and stack using array :- 

# Stack uses push and pop for adding and removing elements.
# Queue uses push (for enqueue) and shift (for dequeue).
# Both classes use an array as the underlying data structure.


class Queue

  def initialize
    @queue = []
  end

  def enqueue(element)
    @queue.push(element)
  end

  def dequeue
    @queue.shift
  end

  def peek 
    @queue.first # Return the front element without removing it
  end

  def is_empty?
    @queue.empty?
  end

  def size
    @queue.size
  end

  def display 
    puts @queue.inspect
  end

end


queue = Queue.new

queue.enqueue(10)
queue.enqueue(20)

queue.display

puts queue.peek
queue.dequeue

queue.display
puts queue.peek