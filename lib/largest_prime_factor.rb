# Enter your procedural solution here!
require 'prime'

def largest_prime_factor(input)

  max_prime = 2
  
  Prime.each do |prime|
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