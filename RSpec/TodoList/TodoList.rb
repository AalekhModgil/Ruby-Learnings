# Write RSpec tests to verify that a TodoList application allows adding, completing, and removing tasks. 
# Include tests for marking tasks as complete and ensuring tasks cannot be added with an empty title.


class Task

    def initialize(title)
        @title = title
        @completed = false
    end

    def complete?
        @completed
    end

    def complete!
        @completed = true
    end

end


class TodoList

    attr_accessor :tasks
    def initialize
        @tasks = []
    end

    def add_task(title)
        raise ArgumentError , "Title cannot be empty" if title.empty?
        task = Task.new(title)
        @tasks << task
        return task
    end

    def complete_task(task)
        task.complete!
    end

    def remove_task(task)
        unless @tasks.include?(task)
            raise ArgumentError , "Task is not in TodoList"
        else
            @tasks.delete(task)
        end
    end

end


