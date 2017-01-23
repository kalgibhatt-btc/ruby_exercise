class RunLengthEncoding
  def self.encode(input)
    letters = input.split('')
    count = 1
    result = ""
    letters.each_with_index do |letter, i|
      if letters[i] == letters[i+1]
        count += 1
      else
        if count == 1
          result += "#{letter}"
        else
          result += "#{count}#{letter}"
          count = 1
        end
      end
    end
    result
  end

  def self.decode(input)
     input.gsub(/(\d+)(\D)/) {$2 * $1.to_i}
   end

end
