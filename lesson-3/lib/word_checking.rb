def word_checking(word)
  word[-2..-1].upcase == "CS" ? 2 ** word.length : word.reverse
end


