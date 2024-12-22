def selectionSort(array)
  n = array.length
  for i in 0...n
    min_index = i
    for j in i+1...n
      if array[min_index] > array[j]
        min_index = j
      end
    end
    if min_index != i
      array[i] , array[min_index] = array[min_index] ,array[i]
    end
  end
end

array = gets.chomp.split.map{|num| num.to_i}
puts "Array before sorting :- #{array.inspect}" 
selectionSort(array)
puts "Array after sorting :- #{array.inspect}"