require 'anagrams'

describe '#first_anagram?' do
  it 'returns true for first_anagrams' do
    expect(first_anagram?("elvis", "lives")).to be(true)
  end

  it 'returns false for non-first_anagrams' do
    expect(first_anagram?("gizmo", "sally")).to be(false)
  end
end

describe '#second_anagram?' do
  it 'returns true for second_anagrams' do
    expect(second_anagram?("elvis", "lives")).to be(true)
  end

  it 'returns false for non-second_anagrams' do
    expect(second_anagram?("gizmo", "sally")).to be(false)
  end
end

describe '#third_anagram?' do
  it 'returns true for third_anagrams' do
    expect(third_anagram?("elvis", "lives")).to be(true)
  end

  it 'returns false for non-third_anagrams' do
    expect(third_anagram?("gizmo", "sally")).to be(false)
  end
end
