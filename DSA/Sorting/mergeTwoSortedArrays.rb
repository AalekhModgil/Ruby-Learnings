print "Enter first sorted array :- "
array1 = gets.split.map{|num| num.to_i}
print "Enter second sorted array :- "
array2 = gets.split.map{|num| num.to_i}

resultArray = []

index1 = 0
index2 = 0

while index1 < array1.length && index2 < array2.length
  if array1[index1] < array2[index2]
    resultArray.push(array1[index1])
    index1 += 1
  else
    resultArray.push(array2[index2])
    index2 += 1
  end
end

while index1 < array1.length
  resultArray.push(array1[index1])
  index1 += 1
end

while index2 < array2.length
  resultArray.push(array2[index2])
  index2 += 1
end

puts "The merged sorted array is :- #{resultArray.inspect}"




