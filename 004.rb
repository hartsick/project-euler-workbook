# Largest palindrome product
#
# Problem 4
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.

######################################################################

MAX_NUM = 999

# 9/18/2014 Solution

def solution_1
  products = []
  palindromes = []
  multiplier1 = MAX_NUM

  while multiplier1 > 0
    multiplier2 = MAX_NUM

    while multiplier2 > 0
      product = multiplier1 * multiplier2
      products << product
      multiplier2 -= 1
    end

    multiplier1 -= 1
  end
  sorted = products.uniq.sort!{|x,y| y <=> x }

  sorted.each do |number|

    # counters
    length = number.to_s.length
    half = (length / 2).floor
    fwd_counter = 0
    bkwd_counter = length - 1
    end_search = false

    while fwd_counter < half && end_search == false
      if number.to_s[fwd_counter] == number.to_s[bkwd_counter]
        palindromes << number if fwd_counter == half - 1
      else
        end_search = true
      end
      fwd_counter += 1
      bkwd_counter -= 1
    end
  end

  p "Largest palindrome: #{palindromes.first}"
end

# solution_1


######################################################################

# 9/19/2014 Solution

def solution_2
  starting_time = Time.now

  products = []
  palindromes = []

  for m1 in 0..MAX_NUM
    for m2 in 0..MAX_NUM
      products << m1 * m2
    end
  end

  products.each do |product|
    palindromes << product if product.to_s == product.to_s.reverse
  end

  p "Largest palindrome: #{palindromes.sort{|x,y| y <=> x}.first}"
  p "In #{Time.now - starting_time} seconds"
end

solution_2
