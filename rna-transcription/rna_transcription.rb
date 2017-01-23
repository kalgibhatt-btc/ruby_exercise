class Complement
  def self.of_dna(rna)
    rna=rna.upcase.split("")
    answer=''
    (0...(rna.length)).each do |i|
      case rna[i]
        when 'G'
          answer+='C'
        when 'C'
          answer+='G'
        when 'T'
          answer+='A'
        when 'A'
          answer+='U'
        else
          return answer=''
          break
        end
      end
    return answer
  end
end
