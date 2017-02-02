require 'byebug'

def first_anagram?(word1, word2)
  word1.chars.permutation.include?(word2.chars)
end

def second_anagram?(word1, word2)
  return false unless word1.length == word2.length
  word1.chars.each { |char| word2.delete!(char) }
  word2.empty?
end
