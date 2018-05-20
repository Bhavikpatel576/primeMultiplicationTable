require_relative './primeGenerator.rb'

class MultiplicationTable
  attr_reader :size
  attr_accessor :table
  def initialize(size)
    @size = size
    @prime_list = PrimeGenerator.first(size)    
    @table = Array.new(size + 1) {Array.new(size + 1)}
  end

  def create
    #populate headers
    1.upto(size) do |idx|
      @table[0][idx] = @prime_list[idx - 1]
    end
    #populate frst columns
    1.upto(size) do |idx|
      @table[idx][0] = @prime_list[idx - 1]
    end
    #multiply values

    1.upto(size) do |row|
      1.upto(size) do |col|
        @table[row][col] = @table[0][col] * @table[row][0]
      end
    end
    @table 
  end
end

