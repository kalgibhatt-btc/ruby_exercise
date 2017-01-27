class Trinary
  def initialize(number)
    @number = number
  end
  def to_decimal
    if @number.match(/[a-zA-Z3-9]/)
      return 0
    else
      number_array = @number.split('').reverse
      l = number_array.length
      sum = 0
      (0..l-1).each do |i|
        sum += (number_array[i].to_i)*(3**i)
      end
    end
    sum
  end
end
