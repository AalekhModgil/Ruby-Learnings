def insertionSort(array)
  n = array.length
  for i in 0...n
    j = i 
    while j > 0 && array[j-1] > array[j]
      array[j] , array[j-1] = array[j-1] , array[j]
      j -= 1
    end
  end
end

array = gets.chomp.split.map{|num| num.to_i}
puts "Array before sorting :- #{array.inspect}"
insertionSort(array)
puts "Array after sorting :- #{array.inspect}"