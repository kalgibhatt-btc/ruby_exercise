require 'prime'
class PrimeFactors
  def self.for(number)
    factors = Prime.prime_division(number)
    result = []
    factors.each do |i|
      count = i[1]
      while count > 0
        result.push(i[0])
        count -= 1
      end
    end
    result
  end
end
