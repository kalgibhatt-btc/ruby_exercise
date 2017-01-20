class Grains
  def self.square(number)
    raise ArgumentError if number <= 0 || number>64
    return 2**(number-1)
  end
  def self.total
    total = 0
    for i in 1..64
      total += (2**(i-1))
    end
    total
  end
end
