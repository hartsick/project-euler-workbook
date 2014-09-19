# 10001st prime
# Problem 7
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
#
# What is the 10,001st prime number?
#
######################################################################

# 9/19/2014 Solution
MAX = 10001

def solution_1
  starting_time = Time.now

  primes = [2,3]
  counter = 2
  factor_found = false

  while primes.length <= MAX
    current_prime = nil

    while factor_found == false || current_prime == nil
      sqrt = Math.sqrt(counter).floor
      (2..sqrt).each do |factor|
        if counter % factor == 0
          factor_found = true
          break
        elsif factor == sqrt
          current_prime = counter
          primes << counter
        end
      end
      counter += 1
    end
  end

  p primes
  p [primes.last, primes[MAX - 1]]
  p "10,0001st prime: #{primes[MAX - 1]}"
  p "In #{Time.now - starting_time} seconds"
end

solution_1