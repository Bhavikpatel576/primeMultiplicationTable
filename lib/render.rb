require_relative './multiplicationTable'

module Colorable # source: Stackoverflow
  def black(str);        "\033[30m#{str}\033[0m" end
  def red(str);          "\033[31m#{str}\033[0m" end
  def green(str);        "\033[32m#{str}\033[0m" end
  def yellow(str);       "\033[33m#{str}\033[0m" end
  def blue(str);         "\033[34m#{str}\033[0m" end
  def magenta(str);      "\033[35m#{str}\033[0m" end
  def cyan(str);         "\033[36m#{str}\033[0m" end
  def gray(str);         "\033[37m#{str}\033[0m" end
end


module Displayable
  include Colorable
  CONSOLE_WIDTH = 75
  
  def display_welcome
    bannerize cyan("Welcome to the Prime Number Multiplication Table")
  end

  def bannerize(message, style="=")
    puts style * CONSOLE_WIDTH
    center(message)
    puts style * CONSOLE_WIDTH
  end

  def center(message)
    puts message.center(CONSOLE_WIDTH)
  end
end 

class Render
  include Displayable
  attr_reader :table
  def initialize(table)
    @table = table
  end

  def render
    display_welcome
    max_width = table[-1][-1].to_s.length + 1
    @table.each do |row|
      center(
        red(
          row.map {|v| v.to_s.rjust(max_width)}.join(" ")
        )
      )
    end
  end
end


table = [[nil,2,3,5,7,11],[2,4,6,10,14,22],[3,6,9,15,21,33],[5,10,15,25,37,55],[7,14,21,35,49,77],[11,22,33,55,77,121]]


Render.new(table).render
