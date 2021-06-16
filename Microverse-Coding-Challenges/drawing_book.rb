# n - page length on book, p - page the student wants to turn to
def pageCount(n, p)
  # Write your code here; Return the minimum value of pages to turn

  left2right = p/2
  right2left = p/(n + n%2)
  left2right < right2left ? left2right : right2left
end

# T.0: 1 ; turning forward
puts pageCount(6, 2)
# T.1: 0 ; turning backward
puts pageCount(5, 4)
