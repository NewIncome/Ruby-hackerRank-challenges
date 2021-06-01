# The function is expected to return a LONG_INTEGER.
# The function accepts following parameters:
#  1. INTEGER n
#  2. 2D_INTEGER_ARRAY queries

def arrayManipulation(n, queries)
  # Write your code here

end

# T.C.0:
p arrayManipulation()

# T.C.0: 200
p arrayManipulation(5, [ [ 1, 2, 100 ], [ 2, 5, 100 ], [ 3, 4, 100 ] ])
# T.C.1: 10
p arrayManipulation(10, [ [ 1, 5, 3 ], [ 4, 8, 7 ], [ 6, 9, 1 ] ])
# T.C.2: 31
p arrayManipulation(10, [ [ 2, 6, 8 ], [ 3, 5, 7 ], [ 1, 8, 1 ], [ 5, 9, 15 ] ])

# T.C.01: 882
p arrayManipulation(4, [[2,3,603],[1,1,286],[4,4,882]])

=begin T.C.1 (: 10) Example:
index->	 1 2 3  4  5 6 7 8 9 10
	      [0,0,0, 0, 0,0,0,0,0, 0]
	      [3,3,3, 3, 3,0,0,0,0, 0]
	      [3,3,3,10,10,7,7,7,0, 0]
	      [3,3,3,10,10,8,8,8,1, 0]
=end
