def firstLastOccurence(array,target)

  first_position = -1
  last_position = -1
  resultArray = []

  # find first occurence
  low = 0
  high = array.length - 1
  while low <= high
    mid = (low + high)/2
    if array[mid] == target
      first_position = mid     
      high = mid - 1
    elsif array[mid] < target
      low = mid + 1
    else
      high = mid - 1
    end
  end
 
  # find last occurence
  low = 0 
  high = array.length - 1
  while low <= high
    mid = (low + high)/2
    if array[mid] == target
      last_position = mid 
      low = mid + 1
    elsif array[mid] < target
      low = mid + 1
    else
      high = mid - 1
    end
  end

  resultArray << first_position
  resultArray << last_position
  return resultArray

end

array = gets.chomp.split.map{|num| num.to_i}
target = gets.to_i
resultArray = firstLastOccurence(array,target)

puts "The first and last position of target #{target} is #{resultArray.inspect}."


