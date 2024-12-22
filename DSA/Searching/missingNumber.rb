def missingNumber(array)
  n = array.length
  sum = n*(n+1)/2
  return sum - array.sum
end

array = gets.chomp.split.map{|num| num.to_i}
puts "Missing number is :- #{missingNumber(array)}"
