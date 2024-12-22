def partition(array , low , high)
  pivot = array[high]
  i = low - 1
  for j in low...high 
    if array[j] < pivot 
      i += 1
      array[i] , array [j] = array[j] , array[i]
    end
  end
  i += 1
  array[i] , array[high] = array[high] , array[i]
  return i
end

def quickSort(array , low , high)
  if low < high
    pivotIndex = partition(array,low,high)
    quickSort(array,low,pivotIndex-1)
    quickSort(array,pivotIndex+1,high)
  end
end

array = gets.chomp.split.map{|num| num.to_i}

puts "Array before sorting :- #{array.inspect}"
n = array.length
quickSort(array,0,n-1)
puts "Array after sorting :- #{array.inspect}"



# Time complexity :-   
# Worst case :- n^2 (Worst case occurs when pivot is always the smallest or the largest element and when array is sorted in ascending or descending)
# Average case :- nLogn
# Used when memory is less and cases are average