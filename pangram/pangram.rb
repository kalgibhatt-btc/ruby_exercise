class Pangram
  def self.pangram?(str)
    input = str.downcase!
    count = 0
    ('a'..'z').each do |i|
      if (input.include?i)
        count += 1
      else
        return false
      end
    end
    if(count == 26)
      returnt true
    end
  end
end
