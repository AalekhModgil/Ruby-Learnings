def matchString(array,inputString)
  array.each.with_index do |string,index|
    if string == inputString
      return index
    end
  end
  return -1
end
array = gets.split
inputString = gets.chomp
result = matchString(array,inputString)
if result == -1
  puts "-1"
else
  puts "Match found at index #{result}"
end



