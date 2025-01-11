class QueueUsingStacks

    def initialize
        @stack1 = []
        @stack2 = []
    end

    def push(value)
        @stack1.push(value)
    end

    def pop
        if @stack2.empty?
            while !@stack1.empty?
                @stack2.push(@stack1.pop)
            end
        end
        @stack2.pop
    end

    def peek
        if @stack2.empty?
            while !@stack1.empty?
                @stack2.push(@stack1.pop)
            end
        end
        @stack2.last
    end

    def empty?
        @stack1.empty? && @stack2.empty?
    end

end


queue = QueueUsingStacks.new

queue.push(1)
queue.push(2)

puts queue.peek()

puts queue.pop()

puts queue.empty?

puts queue.peek()

puts queue.pop()

puts queue.empty?


