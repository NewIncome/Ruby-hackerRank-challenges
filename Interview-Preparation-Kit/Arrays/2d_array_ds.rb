# Returns int: the maximum hourglass sum

def hourglassSum(arr)
  # Write your code here
  prevVal = 0
  while j < arr.length
    newVal = arr[i][j] + arr[i+1][j] +  + arr[i+2][j]
                        + arr[i+1][j+1]
              arr[i][j+2] + arr[i+1][j+2] +  + arr[i+2][j+2]
    prevVal = newVal if newVal > prevVal
    if i === arr.length-1
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
