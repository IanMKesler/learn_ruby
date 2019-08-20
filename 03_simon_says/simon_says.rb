#write your code here
def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, num = 2)
  output = string
  (num - 1).times do
    output += " #{string}"
  end
  output
end

def start_of_word(string, num)
  string[0...num]
end

def first_word(string)
  output = ""
  string.each_char do |char|
    if (char != " ")
      output += char
    else
      return output
    end
  end
end

def titleize(string)
  output = ""
  little = ["and", "the", "is", "over"]
  words = string.split
  words.each_with_index do |word, index|
    if index == 0
      word[0] = word[0].upcase
      output += word
    elsif !(little.include? word)
      word[0] = word[0].upcase
      output += " #{word}"
    else
      output += " #{word}"
    end
  end
  output
end
