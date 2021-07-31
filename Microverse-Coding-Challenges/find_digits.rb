# Return the amount of divisible numbers from it's own digits
def findDigits(n)
  # Write your code here
  dv = 0
  n.to_s.split('').each do |num|
    if num.to_i != 0
      dv+=1 if n%num.to_i == 0
    end
  end
  dv
end

# T.C.ex0 : 2
puts findDigits(12)
# T.C.ex1 : 3
puts findDigits(1012)
