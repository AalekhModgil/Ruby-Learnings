# Given an array of integers, return indices of the two numbers such that they add up to a specific target.

def twoSum(array,target)
  hash_table = {}
  array.each_with_index do | element , index |
    complement = target - element
    if hash_table.key?(complement)
      return [ hash_table[complement] , index ]
    end
    hash_table[element] = index
  end
  return nil
end

print "Enter the elements in array :- " 
array = gets.chomp.split.map{ |num| num.to_i }
print "Enter the target element :- "
target = gets.chomp.to_i
result = twoSum(array,target)
if result == nil
  puts "No two numbers found that add to the target #{target}."
else
  puts "Two numbers found at indexes #{twoSum(array,target)} that add to the target #{target}."
end 
