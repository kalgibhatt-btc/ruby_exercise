class ETL
  def self.transform(old)
    result = {}
    old.each do |k , v|
      (0..v.length-1).each do |i|
        char = v[i].downcase!
        result[char] = k
      end
    end
    result
  end
end
