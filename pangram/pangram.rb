class Pangram
  def self.pangram?(input)
    input.downcase
    count = 0
    ('a'..'z').each do |i|
      if (input.include?i)
        count += 1
      else
        false
      end
    end
    if count.equal(26)
      true
    end
  end
end
