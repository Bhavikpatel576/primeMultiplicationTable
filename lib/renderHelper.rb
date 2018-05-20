require_relative './multiplicationTable'

module Colorable # source: Stackoverflow
  def red(str);          "\033[31m#{str}\033[0m" end
  def blue(str);         "\033[34m#{str}\033[0m" end
  def magenta(str);      "\033[35m#{str}\033[0m" end
  def cyan(str);         "\033[36m#{str}\033[0m" end
end


module Displayable
  include Colorable
  CONSOLE_WIDTH = 75
  
  def display_welcome
    bannerize cyan("Prime Number Multiplication Table")
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
    table.each do |row|
      center(
        red(
          row.map {|v| v.to_s.rjust(max_width)}.join(" ")
        )
      )
    end
  end
end

class CLI
  def self.help
    puts <<~HELP
    A prime number multiplication table generator

    Commands:
    ./render [SIZE] - will output a table based off a positive integer 
    ./render -s     - will output default table
    HELP
  end

  def self.run(argument)
    arg = argument[0].to_i
    if (arg.nil?) || (arg <= 0)
      send(:help)
    elsif (arg == '-s')
      @table = MultiplicationTable.new(10).create_prime_table
      Render.new(@table).render
    else
      @table = MultiplicationTable.new(arg.to_i).create_prime_table
      Render.new(@table).render
    end
  end

  private

  def string?(argument)
  end
end
