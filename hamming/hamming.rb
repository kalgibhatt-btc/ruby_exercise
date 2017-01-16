class Hamming
      def self.compute(string1,string2)

      if string1.length!=string2.length
        raise ArgumentError

      else
        count=0
        l1=string1.length
        string1=string1.upcase
        string2=string2.upcase
        str1=string1.split('')
        str2=string2.split('')
        (0..l1).each do|i|
          if(str1[i]!=str2[i])
            count=count+1
          end

      end
      return count
      end
    end
end
