
def equalizeArray(arr)
  # Write your code here
  # # ---1st try NOPE---
  # cnt = 0
  # while arr.length > 1
  #   chk = arr.shift
  #   puts "arr.include?(#{chk}): #{arr.include?(chk)}"
  #   if arr.include?(chk)
  #     # does include it, find && remove next element
  #     arr.slice!(arr.index(chk))
  #   else
  #     # doesn't include it, add 1
  #     cnt += 1
  #   end
  #   puts "array: #{arr}, cnt: #{cnt}"
  # end
  # cnt

  # ---2nd try---
  ob = Hash.new
  max = 0
  arr.each{|e| ob[e] = (ob[e] || 0) + 1; max = ob[e] if ob[e] > max}
  puts ob
  ob.each{|k,v| cnt+=v if v != max}
  cnt
end

# T.C.0 : 2
puts equalizeArray(3,3,2,1,3)
# T.C.17 : 4
puts equalizeArray(1,2,3,1,2,3,3,3)
