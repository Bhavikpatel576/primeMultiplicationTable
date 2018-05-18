require_relative './primeGenerator.rb'

class MultiplicationTable
  attr_reader :size 
  attr_accessor :table
  def initialize(size)
    @size = size
    @table = Array.new(size) {Array.new(size)}
    create
  end

  def new 
    @table
  end

  def create
    @prime_list = PrimeGenerator.first(size)    
    #populate headers
    0.upto(size - 1) do |idx|
      @table[0][idx] = @prime_list[idx]
    end
    #populate frst columns
    0.upto(size - 1) do |idx|
      @table[idx][0] = @prime_list[idx]
    end
    #multiply values

    1.upto(size - 1) do |row|
      1.upto(size - 1) do |col|
        @table[row][col] = @table[0][col] * @table[row][0]
      end
    end
   @table 
  end

  #print out the table
  def render
  end
end


m1 = MultiplicationTable.new(5)
