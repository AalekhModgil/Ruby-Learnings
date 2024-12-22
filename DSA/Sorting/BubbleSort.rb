def bubbleSort(array)
  n = array.length
  for i in 0...n
    for j in 0...n-i-1
      if array[j] > array[j+1]
        array[j] , array[j+1] =  array[j+1] , array[j]
      end
    end 
  end
end

array = gets.split.map{|num| num.to_i}

puts "Array before sorting :- #{array.inspect}"
bubbleSort(array)
puts "Array after sorting :- #{array.inspect}"