def word_checking(word)
  word[-1].upcase == "S" && word[-2].upcase == "C" ? 2 ** word.length : word.reverse
end


