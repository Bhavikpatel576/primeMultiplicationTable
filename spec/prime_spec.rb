require 'rspec'
require './lib/primeGenerator'

describe PrimeGenerator do 

  it 'determines if a number is prime' do
    expect(PrimeGenerator.isPrime?(1)).to eql(false)
    expect(PrimeGenerator.isPrime?(3)).to eql(true)
    expect(PrimeGenerator.isPrime?(4)).to eql(false)
    expect(PrimeGenerator.isPrime?(5)).to eql(true)
    expect(PrimeGenerator.isPrime?(6)).to eql(false)
    expect(PrimeGenerator.isPrime?(11)).to eql(true)
  end

  it 'generates prime numbers' do
    expect(PrimeGenerator.first).to eql([2])
    expect(PrimeGenerator.first(5)).to eql([2,3,5,7,11])
    expect(PrimeGenerator.first(10)).to eql([2,3,5,7,11,13,17,19,23,29])
  end

  it 'throws error when attempting to generates prime numbers with neg arg' do
    expect {PrimeGenerator.first(-2)}.to raise_error(ArgumentError)
  end

end
