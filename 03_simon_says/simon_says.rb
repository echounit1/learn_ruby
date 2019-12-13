# frozen_string_literal: true

def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, times = 2)
  ((str + ' ') * times)[0...-1]
end

def start_of_word(str, num)
  str[0..num - 1]
end

def first_word(str)
  str.split[0]
end

def titleize(str)
  words = %w[the over and]
  str = str.split[0].capitalize.concat(
    str
      .split[1..-1]
      .map do |word|
        words.include?(word) ? ' ' + word : ' ' + word.capitalize
      end
      .join
  )
  str
end
