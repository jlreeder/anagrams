def first_anagram?(word1, word2)
  word1.chars.permutation.include?(word2.chars)
end
