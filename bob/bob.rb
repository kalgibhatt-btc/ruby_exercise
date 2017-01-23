class Bob
  def self.hey(remark)
    return "Whoa, chill out!" if remark =~ /^[^a-z]+$/ && remark =~ /[A-Z]/
    return "Sure." if remark.end_with?("?") && !(remark =~ /([A-Z]+\s)+/)
    return "Fine. Be that way!" if remark.empty? || remark =~ /^[\s\t]+$/
    'Whatever.'
  end
end
