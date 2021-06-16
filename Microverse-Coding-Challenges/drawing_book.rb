# n - page length on book, p - page the student wants to turn to
def pageCount(n, p)
  # Write your code here; Return the minimum value of pages to turn
  # left2right = p/2
  # right2left = p/(n + n%2)
  # left2right < right2left ? left2right : right2left

  for i in 1..n
    j = (n+1)-i
    j = j%2 != 0 ? j : j+1
    puts "#{i}, n/j:#{n/j}"
  end
end

# T.0: 1 ; turning forward
pageCount(6, 2)
# T.1: 0 ; turning backward
# puts pageCount(5, 4)
