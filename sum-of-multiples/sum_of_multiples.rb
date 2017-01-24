class SumOfMultiples
  def initialize(a,b,c=0)
    @num1 = a
    @num2 = b
    @num3 = c
  end
  def to(number)
    sum = 0
    if @num3 == 0
      (1..number-1).each do |i|
        sum += i if i % @num1 == 0 || i % @num2 == 0
      end
    else
      (1..number-1).each do |i|
        sum += i if i % @num1 == 0 || i % @num2 == 0 || i % @num3 == 0
      end
    end
    sum
  end
end
