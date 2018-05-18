require 'rspec'
require './lib/multiplicationTable'


describe MultiplicationTable do 
  before {@m1 = MultiplicationTable.new(5)}
  it 'creates an empty 2d array' do
    expect(@m1.table).to eql([[nil,nil,nil,nil,nil,nil],[nil,nil,nil,nil,nil,nil],[nil,nil,nil,nil,nil,nil],[nil,nil,nil,nil,nil,nil],[nil,nil,nil,nil,nil,nil],[nil,nil,nil,nil,nil,nil]])
  end

  it 'creates a multiplication table' do 
    expect(@m1.create).to eql([[nil,2,3,5,7,11],[2,4,6,10,14,22],[3,6,9,15,21,33],[5,10,15,25,35,55],[7,14,21,35,49,77],[11,22,33,55,77,121]])
  end
end
