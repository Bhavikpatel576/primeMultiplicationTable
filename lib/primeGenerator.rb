class PrimeGenerator
  def self.isPrime?(number)
    return false if number < 2
    return true if number == 2
    return false if number % 2 == 0 && number > 2
    max_divisor = Math.sqrt(number)
    (3..max_divisor).step(2) { |v| return false if number % v == 0 } 
    true
  end

  def self.first(number=1)
    prime_list = []
    idx = 0
    until prime_list.length == number 
      prime_list.push(idx) if isPrime?(idx)
      idx += 1
    end
    prime_list
  end
end
