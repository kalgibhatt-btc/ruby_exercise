require 'prime'
class Prime
  def self.nth(number)
    raise ArgumentError if number <= 0
    Prime.take(number).last
  end
end
