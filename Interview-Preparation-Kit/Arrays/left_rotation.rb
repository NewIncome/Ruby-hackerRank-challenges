def rotLeft(a, d)
  # Write your code here
  for i in 1..d
    a.push(a.shift)
  end
  a
end

# T.C.1: 5 1 2 3 4
puts rotLeft([1,2,3,4,5], 4)
