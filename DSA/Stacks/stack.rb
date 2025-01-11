class Stack 

  def initialize
    @stack = []
  end

  def push(element)
    @stack.push(element)
  end

  def pop
    if @stack.empty?
      return nil
    end
    @stack.pop
  end

  def peek 
    if @stack.empty?
      return nil
    end
    @stack[-1]
  end

  def is_empty?
    @stack.empty?
  end

  def size
    @stack.size
  end

  def display
    @stack.reverse.each {|element| print "#{element} "}
  end

end

stack = Stack.new

stack.push(10)
stack.push(20)
stack.push(30)
# stack.pop
# puts stack.size
# puts stack.peek
stack.display