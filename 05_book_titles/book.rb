class Book
  def title
    @title
  end

  def title=(string)
    string = string.split(" ")
    string = capitalize(string)
    @title = string.join(" ")
  end

  def capitalize(string)
    string = string.map.with_index { |word, index|
      if index == 0 || word == "i" || check(word)
        word = word[0].upcase + word[1..-1]
      else
        word = word
      end
    }
    string
  end

  def check(word)
    exceptions = { articles: ["the", "a", "an"], conjunctions: ["and"], prepositions: ["in", "of"] }
    exceptions.each do |type, list|
      if list.include? word
        return false
      end
    end
    return true
  end
end
