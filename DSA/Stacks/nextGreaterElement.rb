def nextGreaterElement(nums1,nums2)
  ans = []
  nums1.each do |ele|
      index = nums2.index(ele)
      if index.nil?
        ans << -1
        next
      end
      found = false
        for i in index+1..nums2.size-1
          if nums2[i] > ele
            ans << nums2[i]
            found = true
            break
          end
        end
      ans << -1 if found == false
  end
  ans
end

print "Enter first array :- "
nums1 = gets.chomp.split.map{|num| num.to_i}
print "Enter second array :- "
nums2 = gets.chomp.split.map{|num| num.to_i}

puts nextGreaterElement(nums1,nums2).inspect

