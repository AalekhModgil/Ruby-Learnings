def longest_common_prefix(inputStrings)

  if inputStrings.empty?
    return ""
  end

  prefix = inputStrings[0]
  inputStrings.each do |string|
    while !string.start_with?(prefix)
      prefix = prefix[0..-2]
      return "" if prefix.empty?
    end
  end
  return prefix
  
end

inputStrings = gets.chomp.split(" ")
output = longest_common_prefix(inputStrings)
if output == ""
  puts "No common prefix found."
else
  puts "The longest common prefix is :- #{output}"
end

