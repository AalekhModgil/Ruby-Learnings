def linearSearch(array,target)
  for i in 0..array.length
    if array[i] == target
      return i 
    end
  end
  return -1
end

array = gets.split.map{|num| num.to_i}
target = gets.to_i
index = linearSearch(array,target)

if index == -1
  puts "Target element #{target} not found."
else
  puts "Target element #{target} found at index #{index}."
end
