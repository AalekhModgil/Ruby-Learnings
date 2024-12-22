def peakElement(array)

  return array[0] if array.length == 1 # Single element is the peak
  return array[0] if array[0] > array[1] # Check the first element
  return array[-1] if array[-1] > array[-2] # Check the last element
  
  left = 1
  right = array.length-2
  while left <= right
    mid = left + (right-left)/2
    if array[mid] > array[mid-1] && array[mid] > array[mid+1]
      return array[mid]
    elsif array[mid] > array[mid-1]
      left = mid + 1
    else
      right = mid - 1
    end
  end
  return -1
end
  
array = gets.chomp.split.map{|num| num.to_i}
puts "The peak element is :- #{peakElement(array)}"