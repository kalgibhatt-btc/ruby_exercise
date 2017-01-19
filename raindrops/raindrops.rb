class Raindrops
  def self.convert(num)
    if num%3==0&&num%5==0&&num%7==0
        return "Pling"+"Plang"+"Plong"
    elsif num%3==0&&num%5==0
        return "PlingPlang"
    elsif num%3==0 && num%7==0
        return "PlingPlong"
    elsif num%7==0 && num%5==0
        return "PlangPlong"
    elsif num%5==0
        return "Plang"
    elsif num%7==0
        return "Plong"
    elsif num%3==0
        return "Pling"
    else
        return num.to_s
    end
  end
end
