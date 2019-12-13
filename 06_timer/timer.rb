# frozen_string_literal: true

class Timer
  attr_reader :seconds
  attr_writer :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    hours = @seconds / 3600
    minutes = (@seconds % 3600) / 60
    format('%.02d:%.02d:%.02d', hours, minutes, @seconds % 60)
  end
end
