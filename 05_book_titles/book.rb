# frozen_string_literal: true

class Book
  attr_reader :title

  def title=(str)
    str = str.split[0].capitalize.concat(
      str
      .split[1..-1]
      .map do |word|
        words = %w[of the over and in a an]
        words.include?(word) ? ' ' + word : ' ' + word.capitalize
      end
      .join
    )
    @title = str
  end
end
