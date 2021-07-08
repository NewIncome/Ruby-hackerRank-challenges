# Det the most expensive keyboard and USB that can be bought
# return -1 if can't buy both
def getMoneySpent(keyboards, drives, b)
  # Write your code here.
  asc_keyboards = keyboards.sort()
  asc_drives = drives.sort()
  m_expensive = []

  # return -1 if asc_keyboards[-1] >= b || asc_drives[-1] >= b

  keyboards.each do |kb|
    drives.each do |dr|
      sum = kb + dr
      m_expensive.push(sum) if sum <= b
    end
  end
  return -1 if m_expensive.empty?
  m_expensive.max()
end

# T.C.example : 
puts getMoneySpent([40,50,60], [5,8,12], 60)
# T.C.0 : 9
puts getMoneySpent([3,1], [5,2,8], 10)
# T.C.0 : -1
puts getMoneySpent([4], [5], 5)
