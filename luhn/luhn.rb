class Luhn
  def initialize(input)
    @@number = input.to_i
  end

  def addends
    addend = @@number.to_s.split('').map(&:to_i)
    addend = addend.reverse
    sum = 0
    (0..addend.length-1).each do |num|
          if((num)%2 != 0)
            addend[num] = addend[num]*2
            if addend[num] > 9
              addend[num] = addend[num]-9
            end
          end
          sum = sum + addend[num]
      end
    @sum = sum
    addend.reverse
  end

  def checksum
    self.addends
    @sum
  end

  def valid?
    self.addends
     if @sum%10 == 0
       return true
    else
      return false
    end
  end

  def self.create(number)
    arr = Luhn.new(number).addends
    new_sum = 0
    @sum = 0
      arr.each do |n|
        @sum += n
      end
     number = number * 10 + (10 - Luhn.new(number * 10).checksum) % 10
     number
  end
