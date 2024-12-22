def binarySearch(array,target)
  low = 0
  high = array.length-1
  while low <= high
    mid = (low + high)/2
    if array[mid] == target
      return mid
    elsif array[mid] < target
      low = mid + 1   
    else 
      high = mid - 1
    end
  end
  return -1
end

array = gets.split.map{|num| num.to_i}
target = gets.to_i
index = binarySearch(array,target)

if index == -1
  puts "Target element #{target} not found."
else
  puts "Target element #{target} found at index #{index}."
end