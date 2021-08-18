
def equalizeArray(arr)
  # Write your code here
  cnt = 0
  while arr.length > 1
    chk = arr.shift
    puts "arr.include?(#{chk}): #{arr.include?(chk)}"
    if arr.include?(chk)
      # does include it, find && remove next element
      arr.slice!(arr.index(chk))
    else
      # doesn't include it, add 1
      cnt += 1
    end
    puts "array: #{arr}, cnt: #{cnt}"
  end
  cnt
end

# T.C.0 : 2
puts equalizeArray(3,3,2,1,3)
# T.C.17 : 4
puts equalizeArray(1,2,3,1,2,3,3,3)
