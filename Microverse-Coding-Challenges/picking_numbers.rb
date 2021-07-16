# find the longest subarray where the absolute difference
# between any two elements is less than or equal to 1
def pickingNumbers(a)
  # Write your code here
  asc_ar = a.sort()
  lengths = []
  temp_ar = [asc_ar[0]]

  for i in 0..(a.length-2)
    puts "#{asc_ar[i]} - #{asc_ar[i+1]} : #{asc_ar[i] - asc_ar[i+1]}"
    if (asc_ar[i] - asc_ar[i+1]).abs < 2
      # puts "inside IF"
      temp_ar.push(asc_ar[i+1])
    else
      # puts "inside ELSE"
      lengths.push(temp_ar.length) if temp_ar.length > 1
      puts "temp_ar:#{temp_ar}"
      temp_ar = [asc_ar[i+1]]
    end
  end

  puts "asc_ar:#{asc_ar}, lengths:#{lengths}"
  lengths.max()

  # a.each_with_index do |e, i|
  #   for j in i..a.length
  #     dif = e.abs - a[i].abs
  #     abs_dif.push(dif) if 
  #   end
  # end
end

# T.C.example : 5
puts pickingNumbers([1,1,2,2,4,4,5,5,5]); puts
# T.C.0 : 3
puts pickingNumbers([4,6,5,3,3,1]); puts
# T.C.1 : 5
puts pickingNumbers([1,2,2,3,1,2])
