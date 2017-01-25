class PhoneNumber
  def initialize(phone_number)
    @phone_number = phone_number
  end

  def number
    if @phone_number.match(/[a-zA-Z]/)
      return '0000000000'
    else
      @phone_number
    end
    @result = @phone_number.delete "^0-9"
    if @result.length == 10
      @result
    elsif @result.length == 11 && @result[0] == '1'
        @result.slice(1..-1)
    else
      '0000000000'
    end
  end

  def area_code
   return  @phone_number[0..2]
  end

  def to_s
   return  "(#{@phone_number[-10..-8]}) #{@phone_number[-7..-5]}-#{@phone_number[-4..-1]}"
  end

end
