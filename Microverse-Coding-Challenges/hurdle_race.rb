def hurdleRace(k, height)
  # minimum potions needed to jump all hurdles? If none, return 0
  potions = 0
  height.each{|h| potions = h - k if h > k && h-k > potions}
  potions
end

# T.C.0 : 2
puts hurdleRace(4, [1,6,3,5,2])
# T.C.1 : 0
puts hurdleRace(7, [2,5,4,5,2])
