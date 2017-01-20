class Pangram
  def self.pangram?(input)
    input=input.downcase
  #  input=input.split
    count=0

    ('a'..'z').each do |i|
      if (input.include?i)
        count=count+1
      else
        return false
      end
    end
    if(count==26)
      returnt=true
    end
  end
end
