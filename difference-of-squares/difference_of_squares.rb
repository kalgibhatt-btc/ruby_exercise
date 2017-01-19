class Squares
  def initialize(num)
    @number = num
    @sum_of_square = 0
    @square_of_sum = 0

      (0..number).each do |i|
        @square_of_sum = square_of_sum + i
        i += 1
      end
      @square_of_sum = ( square_of_sum ** 2)

      (0..number).each do |i|
        @sum_of_square = sum_of_square + (i ** 2)
        i += 1
      end 

      @sum_square = sum_of_square
      @square_sum = square_of_sum
      @diff = square_of_sum - sum_of_square

    end

    def sum_of_squaes
      return @sum_square
    end

    def square_of_sum
      return @square_sum
    end

    def difference
      return @diff
    end
end
