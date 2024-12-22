def DNFsort(array)
  low = 0 
  mid = 0
  high = array.length-1
  while mid <= high
    if array[mid] == 0
      array[low] , array[mid] = array[mid] , array[low]
      low += 1
      mid += 1
    elsif array[mid] == 1
      mid += 1
    else
      array[mid] , array[high] = array[high] , array[mid]
      high -= 1
    end
  end
end

array = gets.chomp.split.map{|num| num.to_i}

puts "Array before DNF sort :- #{array.inspect}"
DNFsort(array)
puts "Array after DNF sort :- #{array.inspect}" 