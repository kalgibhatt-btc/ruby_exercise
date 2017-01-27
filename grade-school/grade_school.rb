class School
  def initialize
    @data = Hash.new
  end
  def add(name,grade)
    @data[name] = grade
  end
  def students(number)
    result = names_by_grade(number)
    if result == nil
      []
    else
       result
    end
  end
  def names_by_grade(grade)
    result_name = @data.select{|key,value|@data[key] == grade}
    result_name.keys.sort
  end
  def students_by_grade
    result = Array.new
    array = @data.values.uniq.sort
    (0..array.length-1).each do |i|
      hash = Hash.new
      hash[:grade] = array[i]
      hash[:students] = names_by_grade(array[i])
      result.push(hash)
    end
    result
  end
end
