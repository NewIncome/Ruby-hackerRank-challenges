# Returns int: the maximum hourglass sum

def hourglassSum(arr)
  # Write your code here
  prevVal = nil
  i = 0
  j = 0
  while j < 4
    newVal = arr[i][j] + arr[i][j+1] + arr[i][j+2] + arr[i+1][j+1] + arr[i+2][j] + arr[i+2][j+1] + arr[i+2][j+2]
    if prevVal.nil?
      prevVal = newVal
    elsif newVal > prevVal
      prevVal = newVal
    end
    puts "i:#{i}, j#{j}, prev:#{prevVal}, new:#{newVal}"
    i += 1
    if i === 4
      i = 0
      j += 1
    end
  end
  prevVal
end

# T.C.0: 19
puts hourglassSum([[1, 1, 1, 0, 0, 0], [0, 1, 0, 0, 0, 0], [1, 1, 1, 0, 0, 0], [0, 0, 2, 4, 4, 0], [0, 0, 0, 2, 0, 0], [0, 0, 1, 2, 4, 0]])
# T.C.1: 13
puts hourglassSum([[1, 1, 1, 0, 0, 0], [0, 1, 0, 0, 0, 0], [1, 1, 1, 0, 0, 0], [0, 9, 2, -4, -4, 0], [0, 0, 0, -2, 0, 0], [0, 0, -1, -2, -4, 0]])
# T.C.2: 28
puts hourglassSum([[-9, -9, -9, 1, 1, 1], [0, -9, 0, 4, 3, 2], [-9, -9, -9, 1, 2, 3], [0, 0, 8, 6, 6, 0], [0, 0, 0, -2, 0, 0], [0, 0, 1, 2, 4, 0]])
# T.C.7: -19
puts hourglassSum([[0,-4,-6,0,-7,-6],[-1,-2,-6,-8,-3,-1],[-8,-4,-2,-8,-8,-6],[-3,-1,-2,-5,-7,-4],[-3,-5,-3,-6,-6,-6],[-3,-6,0,-8,-6,-7]])
