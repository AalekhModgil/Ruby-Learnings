array = gets.split.map{|num| num.to_i}
target = gets.to_i

index = array.find_index(target)

if index == nil
  puts "Target element #{target} not found."
else
  puts "Target element #{target} found at index #{index}."
end
