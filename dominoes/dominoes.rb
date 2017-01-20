class Dominoes
  def self.chain(input)
    return input if input.empty?
    return nil if input.count == 1 && input.first.first != input.first.last

    output_chain = nil

    input.permutation { |chain|
      if valid_chain(chain)
        output_chain = chain
        break
      end
    }

    output_chain
  end

  def self.valid_chain(chain)

    if chain.first.first == chain.last.last

    elsif chain.first.first == chain.last.first
      chain[chain.count - 1] = chain.last.reverse

    elsif chain.first.last == chain.last.last
      chain[0] = chain.first.reverse

    elsif chain.first.last == chain.last.first
      chain[0] = chain.first.reverse
      chain[chain.count - 1] = chain.last.reverse

    else
      return false
    end

    (1..chain.size - 1).each { |index|
      current = chain[index]
      prev = chain[index-1]

      if prev.last == current.first
      elsif prev.last == current.last
        chain[index] = current.reverse
      else
        return false
      end
    }
  end
end
