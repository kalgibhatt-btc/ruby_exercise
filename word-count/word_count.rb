class Phrase
  def initialize(phrase)
    @words = phrase.downcase.gsub(/[!!&@$%^&:.,]/," ").split(" ")
  end

  def word_count
    count = Hash.new(0)
    @words.each do |word|
      if word[0] == "'" && word[-1] == "'"
        word[0] = ""
        word[-1] = ""
      end
      count[word] += 1
    end
    count
  end
end
