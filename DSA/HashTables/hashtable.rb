# hash = { "a" => 1 , "b" => 2 }
# puts hash
# hash["c"] = 3  # add
# puts hash
# hash.delete("a") # delete
# puts hash


# iteration
# hash = { "a" => 1 , "b" => 2 }

# hash.each do |key , value|
#   puts "#{key} : #{value}"
# end

# hash.each_key do |key|
#   puts key
# end

# hash.each_value do |value|
#   puts value
# end


# hash = { "a" => 1 , "b" => 2 , "c" => 3}
# puts hash.key?("a")
# puts hash.value?(1)
# puts hash.empty?
# puts hash.size


# map 

# hash = { "a" => 1 , "b" => 2 , "c" => 3}
# result = hash.map{ |key,value| [key,value*2]}.to_h
# puts result



# merge

# hash1 = {"a" => 1 , "b" => 3} 
# hash2 = {"b" => 2}
# # merged = hash1.merge(hash2)
# # puts merged
# merged = hash1.merge(hash2) { | common_key , hash1_val , hash2_val | hash1_val + hash2_val }
# puts merged


# hash1 = {"a" => 1 , "b" => 2}
# puts hash1.keys
# puts hash1.values


# Set Default Value Dynamically
# hash = Hash.new { |hash,key| hash[key] = [] }
# hash["a"] << 1
# hash["a"] << 2
# puts hash["a"].inspect


# hash1 = {"a" => 1 , "b" => 2}
# hash1.delete_if { |key,value| value < 2 }
# puts hash1


# hash = { "a" => 1, "b" => 2 }
# selected = hash.select { |key, value| value < 2 }
# puts selected 