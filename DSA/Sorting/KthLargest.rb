def KthLargest(array,k)
  n = array.length
  if k < 1 || k > n
    return;
  end
  for i in 0...n
    for j in 0...n-i-1
      if array[j] < array[j+1]
        array[j] , array[j+1] = array[j+1] , array[j]
      end
    end
  end
  return array[k-1]
end

array = gets.split.map{|num| num.to_i}
k = gets.to_i
result = KthLargest(array,k)

if result == nil
  puts "Invalid value of k."
else
  puts "The #{k}th largest element in array is :- #{result}"
end


