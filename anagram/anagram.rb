class Anagram

  def initialize(input)
      @input = input
  end

  def match(list)
    result = []
    return result if @input==''
    word=@input.downcase
    string=word.split('')
    string.sort_by!{ |m| m.downcase }
    list.each do |i|
      w = i
      i=i.downcase
      i=i.split('')
      i=i.sort_by!{ |m| m.downcase }
      if string==i && word!=w.downcase
       result.push(w)
      end
    end
    return result

  end
end
