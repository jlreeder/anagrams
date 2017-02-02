require 'anagrams'

context 'with long anagrams' do
  let(:long1) { 'tobeornottobethatisthequestionwhethertisnoblerinthemindtosuffertheslingsandarrowsofoutrageousfortune' }
  let(:long2) { 'inoneofthebardsbestthoughtoftragediesourinsistentherohamletqueriesontwofrontsabouthowlifeturnsrotten' }

  describe '#first_anagram' do
    it 'recognize true anagrams' do
      expect(first_anagram?(long1, long2)).to be(true)
    end
  end

  describe '#second_anagram' do
    it 'recognize true anagrams' do
      expect(second_anagram?(long1, long2)).to be(true)
    end
  end

  describe '#third_anagram' do
    it 'recognize true anagrams' do
      expect(third_anagram?(long1, long2)).to be(true)
    end
  end

  describe '#fourth_anagram' do
    it 'recognize true anagrams' do
      expect(fourth_anagram?(long1, long2)).to be(true)
    end
  end
end

context 'with short anagrams' do
  let(:short1) { 'elvis' }
  let(:short2) { 'lives' }

  let(:short_false1) { 'gizmo' }
  let(:short_false2) { 'sally' }

  describe '#first_anagram?' do
    it 'returns true for first_anagrams' do
      expect(first_anagram?(short1, short2)).to be(true)
    end

    it 'returns false for non-first_anagrams' do
      expect(first_anagram?(short_false1, short_false2)).to be(false)
    end
  end

  describe '#second_anagram?' do
    it 'returns true for second_anagrams' do
      expect(second_anagram?(short1, short2)).to be(true)
    end

    it 'returns false for non-second_anagrams' do
      expect(second_anagram?(short_false1, short_false2)).to be(false)
    end
  end

  describe '#third_anagram?' do
    it 'returns true for third_anagrams' do
      expect(third_anagram?(short1, short2)).to be(true)
    end

    it 'returns false for non-third_anagrams' do
      expect(third_anagram?(short_false1, short_false2)).to be(false)
    end
  end

  describe '#fourth_anagram?' do
    it 'returns true for fourth_anagrams' do
      expect(fourth_anagram?(short1, short2)).to be(true)
    end

    it 'returns false for non-fourth_anagrams' do
      expect(fourth_anagram?(short_false1, short_false2)).to be(false)
    end
  end
end

