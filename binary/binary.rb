class Binary
  def self.to_decimal(number)
    raise ArgumentError if number =~ /[^0|1]/
    number = number.split('').reverse
    length = number.length
    sum=0
    (0..length-1).each do |i|
    sum += number[i].to_i*(2**i)
    end
    sum
  end
end
