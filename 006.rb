# The sum of the squares of the first ten natural numbers is,
# 12 + 22 + ... + 102 = 385
#
# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)2 = 552 = 3025
#
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
#
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
#
######################################################################

# 9/19/2014 Solution

def solution_1
  starting_time = Time.now

  range = 1..100

  p "Difference: #{square_sum(range) - sum_squares(range)}"
  p "In #{Time.now - starting_time} seconds"
end

def square_sum(nums)
  square = nums.inject(:+)
  square * square
end

def sum_squares(nums)
  squares = []
  nums.each do |num|
    squares << num * num
  end
  squares.inject(:+)
end

solution_1
