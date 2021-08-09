# Define the number of hackos to pay for the lateness of the
# expected-return-date(d2) compared to the due-date(d1)
def libraryFine(d1, m1, y1, d2, m2, y2)
  # Write your code here
  if y1 <= y2
    if m1 <= m2
      if d1 <= d2
        fine = 0
      else    # it was returned after D but same M
        fine = 15 * (d1 - d2)
      end
    else    # it was returned after D & M 
      fine = 500 * (m1 - m2)
    end
  else
    fine = 10000
  end
  puts "fine: #{fine}"
  fine
end

# T.C.0 : 45
puts libraryFine(9,6,2015,6,6,2015)
# T.C.10 : 0
puts libraryFine(28,2,2015,15,4,2015)   # CHECK/TEST THIS
# not passing 5, 10, 16; wrong
