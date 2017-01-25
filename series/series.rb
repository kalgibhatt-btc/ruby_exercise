class Series
  def initialize(number)
    @number = number
    @array_number = number.split('')
  end
  def slices(n)
    result = Array.new()
    length = @number.length
    raise ArgumentError if n > length
    result = @array_number if n == 1
    (0...length-n+1).each do |i|
      result.push(@number.slice(i,n).to_s)
    end
    result.uniq
  end
end
