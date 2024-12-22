def conquer(array,si,mid,ei)
  merged = []
  index1 = si
  index2 = mid + 1
  x = 0
  while index1 <= mid  && index2 <= ei

    if array[index1] <= array[index2]
      merged[x] = array[index1]
      x += 1
      index1 += 1
    else
      merged[x] = array[index2]
      x += 1
      index2 += 1
    end

  end

  while index1 <= mid
    merged[x] = array[index1]
    x += 1
    index1 += 1
  end 

  while index2 <= ei
    merged[x] = array[index2]
    x += 1
    index2 += 1
  end

  for i in 0...merged.length
    array[si + i] = merged[i]
  end
end


def divide(array,si,ei)
  if si >= ei
    return
  end
  mid = si + (ei-si)/2
  divide(array,si,mid)
  divide(array,mid+1,ei)

  conquer(array,si,mid,ei)
end

array = gets.chomp.split.map{|num| num.to_i}
puts "Array before sorting :- #{array.inspect}"
n = array.length
divide(array,0,n-1)
puts "Array after sorting :- #{array.inspect}"



# Divide and Conquer
# Time complexity :- nLogn