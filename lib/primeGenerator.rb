class PrimeGenerator
  def self.isPrime?(number)
    return false if number < 2
    return true if number == 2
    return false if number % 2 == 0 && number > 2
    max_divisor = Math.sqrt(number)
    (3..max_divisor).step(2) { |potential_divisor| return false if number % potential_divisor  == 0 } 
    true
  end

  def self.first(number=1)
    invalid_argument if !valid_argument?(number)
    prime_list = []
    candidate_value = 0
    until prime_list.length == number 
      prime_list.push(candidate_value) if isPrime?(candidate_value)
      candidate_value += 1
    end
    prime_list
  end

  private

  def self.valid_argument?(value)
    value > 0
  end

  def self.invalid_argument
    raise ArgumentError.new('attempt to take negative size')
  end
end
