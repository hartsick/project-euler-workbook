# Summation of primes
# Problem 10
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#
# Find the sum of all the primes below two million.
#
######################################################################

MAX_NUM = 2000000

# 9/21/2014 Solution
# desperately needs optimization

def solution_1
  starting_time = Time.now

  total = 0

  all_primes(MAX_NUM).each { |prime| total += prime }

  p "Sum of first #{MAX_NUM} primes: #{total}"
  p "In #{Time.now - starting_time} seconds"
end

def all_primes(num)
  primes = [2]
  potential_primes = (3..num).step(2).to_a

  # fake sieve of eratosthenes
  while potential_primes.length > 0
    current_num = potential_primes.first
    # add to primes
    primes << current_num
    # remove all multiples of current prime
    prime_multiples = (current_num..num).step(current_num).to_a
    potential_primes = potential_primes - prime_multiples
  end
  primes
end

# solution_1

######################################################################

# 9/21/2014 Solution 2
# using std lib

require "prime"

def solution_2
  starting_time = Time.now

  total = 0

  Prime.each(MAX_NUM) { |prime| total += prime }

  p "Sum of first #{MAX_NUM} primes: #{total}"

  p "In #{Time.now - starting_time} seconds"
end

solution_2


######################################################################

# 9/21/2014 Solution 3
# Sieve of Eratosthenes

def solution_3(num)
  starting_time = Time.now

  # actual sieve of eratosthenes
  potential_primes = (2..num).to_a
  potential_primes.each_with_index do |val, index|
    if val
      index += val
      while index < num
        potential_primes[index] = nil
        index += val
      end
    else
      next
    end
  end

  primes = potential_primes.compact

  p "Sum of first #{num} primes: #{primes.reduce(:+)}"

  p "In #{Time.now - starting_time} seconds"
end

solution_3(MAX_NUM)