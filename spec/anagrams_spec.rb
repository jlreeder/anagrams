require 'anagrams'

describe '#first_anagram?' do
  it 'returns true for first_anagrams' do
    expect(first_anagram?("elvis", "lives")).to be(true)
  end

  it 'returns false for non-first_anagrams' do
    expect(first_anagram?("gizmo", "sally")).to be(false)
  end
end
