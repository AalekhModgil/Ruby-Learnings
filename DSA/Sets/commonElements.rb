# Problem: Given two arrays, find the elements that are present in both arrays.

require 'set'

def common_elements_array(array1,array2)

  set1 = Set.new
  common_array = []

  array1.each do |ele|
    set1 << ele
  end

  array2.each do |ele|
    if set1.include?(ele)
      common_array << ele
    end
  end

  return common_array
  
end

print "Enter first array :- "
array1 = gets.chomp.split.map{|num| num.to_i}

print "Enter second array :- "
array2 = gets.chomp.split.map{|num| num.to_i}

result_array = common_elements_array(array1,array2)
puts "Common Elements Array :- #{result_array}"

