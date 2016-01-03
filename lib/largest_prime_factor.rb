# Enter your procedural solution here!
require 'prime'

def largest_prime_factor(input)

  max_prime = 2
  
  #Prime.each do |prime|            -- to use Ruby's built in Prime class
  first_primes.each do |prime|
    if input % prime == 0
      if (input / prime).prime?
        max_prime = input/prime
        break
      else
        input /= prime
      end 
    end
  end
  
  max_prime
  
end

def first_primes
  max = 10000        #A bit arbitrary and fails on larger numbers
  numbers = (2..max).to_a
  upper = Math.sqrt(max)
  
  (2..upper).each do |n|
    unless numbers[n - 2] == nil
      (n * n).step(max, n) { |i| numbers[i - 2] = nil }
    end
  end

  numbers.compact
end