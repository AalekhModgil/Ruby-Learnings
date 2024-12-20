require_relative './TodoList.rb'

RSpec.describe TodoList do 
  let(:todo_list) {TodoList.new}

  describe "#add_task" do 
    it "add a task with a title to the list" do 
      task = todo_list.add_task("Go shopping")
      expect(todo_list.tasks).to include(task)
    end

    it "raises an error if task title is empty" do 
      expect { todo_list.add_task("")}.to raise_error( ArgumentError , "Title cannot be empty")
    end
  end

  describe "#complete_task" do 
    it "marks a task as complete" do 
      task = todo_list.add_task("Buy Groceries")
      todo_list.complete_task(task)
      expect(task.complete?).to be true
    end
  end


  describe "#remove_task" do 
    it "removes a task from the list" do 
      task = todo_list.add_task('Buy groceries')
      todo_list.remove_task(task)
      expect(todo_list.tasks).not_to include(task)
    end

    it "raises an error if the task is not found" do 
      expect {todo_list.remove_task("Nonexistent task") }.to raise_error(ArgumentError , "Task is not in TodoList")
    end
  end

end
