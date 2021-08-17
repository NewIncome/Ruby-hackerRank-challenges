# return the amount of letters 'a', up-to-nth position in
# a repeated string
def repeatedString(s, n)
  # Write your code here
  # Non-math approach
  return n if s == 'a'
  a_reps = 0
  long_str = n % s.length == 0 ? s * (n/s.length) : s * (n/s.length + 1)
  for i in 0..n
    a_reps += 1 if long_str[i] == 'a'
  end
  a_reps
end

# T.C.0 : 7
puts repeatedString('aba')
# T.C.1 : 1000000000000
puts repeatedString('a')
