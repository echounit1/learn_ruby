# frozen_string_literal: true

def translate(str)
  vowels = /^[aeiow]/i
  consonants = /^[^aeiow]{1,}/i
  str.split.map do |word|
    if vowels.match(word)
      word + 'ay'
    else
      word.split(consonants)[1] + consonants.match(word).to_s + 'ay'
    end
  end.join(' ')
end
