class Year
  def self.leap?(number)
    if (number % 4 == 0 && number % 100 != 0 || number % 400 == 0)
      true
    else
      false
    end
  end
end
