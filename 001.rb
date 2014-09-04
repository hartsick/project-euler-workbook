# Problem 1
# Multiples of 3 and 5
#
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.

# 09/03/2014
range   = Range.new( 0, 1000, true )
threes  = range.step(3).to_a
fives   = range.step(5).to_a

p (threes | fives).reduce(:+)