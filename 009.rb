# Special Pythagorean triplet
# Problem 9
# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
# a2 + b2 = c2
#
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
#
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.
#
######################################################################

# 9/19/2014 Solution

def solution_1
  starting_time = Time.now

  # starting numbers
  product = nil
  c = 5

  while !product
    b = 4
    while b < c
      a = 3
      while a < b
        if a + b + c == 1000 && a**2 + b**2 == c**2
          product = a * b * c
        end
        a += 1
      end
      b += 1
    end
    c += 1
  end

  p "Triplet product: #{product}"
  p "In #{Time.now - starting_time} seconds"
end

solution_1