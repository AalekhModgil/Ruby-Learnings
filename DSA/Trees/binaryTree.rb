class Node

  attr_accessor :data , :left , :right

  def initialize(data)
    @data = data
    @left = nil
    @right = nil 
  end

end

first_node = Node.new(2)
second_node = Node.new(3)
third_node = Node.new(4)
fourth_node = Node.new(5)

first_node.left = second_node
first_node.right = third_node
second_node.left = fourth_node

puts "Root Node :- #{first_node.data}"
puts "Left Child of Root :- #{first_node.left.data}"
puts "Right Child of Root :- #{first_node.right.data}"
puts "Left Child of #{second_node.data} :- #{second_node.left.data}"
