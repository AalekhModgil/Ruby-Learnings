arr = gets.split.map{|num| num.to_i}

print "Numbers processed :- "
arr.each do |ele|
  if ele % 7 == 0
    break
  else
    print "#{ele} "
  end
end
