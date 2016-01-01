# Enter your object-oriented solution here!
require 'prime'

class LargestPrimeFactor
  def initialize(input)
    @number = input
  end
  
  def number
    max_prime = 2
    
    Prime.each do |prime|
      if @number % prime == 0
        if (@number / prime).prime?
          max_prime = @number / prime
          break
        else
          @number /= prime
        end 
      end
    end
    
    max_prime
  end
end
