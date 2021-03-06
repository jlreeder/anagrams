require 'byebug'

def first_anagram?(word1, word2)
  word1.chars.permutation.include?(word2.chars)
end

def second_anagram?(word1, word2)
  copy1 = word1
  copy2 = word2

  word1.chars.each do |char1|
    word2.chars.each do |char2|
      if char1 == char2
        copy1.delete!(char1)
        copy2.delete!(char1)
      end
    end
  end

  copy1.empty? && copy2.empty?
end

def third_anagram?(word1, word2)
  word1.chars.sort == word2.chars.sort
end

def fourth_anagram?(word1, word2)
  hash1 = Hash.new { |h, k| h[k] = 0 }
  hash2 = Hash.new { |h, k| h[k] = 0 }

  word1.chars.each { |char| hash1[char] += 1 }
  word2.chars.each { |char| hash2[char] += 1 }

  hash1 == hash2
end
