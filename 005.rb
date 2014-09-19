# Smallest multiple
# Problem 5
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
#
######################################################################

# 9/19/2014 Solution

def solution_1
  starting_time = Time.now

  divisors = 2..20
  counter = 1
  smallest = 0
  divisible = false

  while divisible == false
    multiple = 20 * counter
    divisors.each do |divisor|
      if multiple % divisor == 0
        if divisor == divisors.last
          smallest = multiple
          divisible = true
        end
      else
        break
      end
    end
    counter += 1
  end

  p "Smallest positive number: #{smallest}"
  p "In #{Time.now - starting_time} seconds"
end

solution_1
