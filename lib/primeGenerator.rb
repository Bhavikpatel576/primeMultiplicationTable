
class PrimeGenerator
  def self.isPrime?(number)
    return false if number < 2
    return true if number == 2
    (2...number).each do |value|
      if (number % value == 0)
        return false
      end
    end
    true
  end

  def self.first(number)
    prime_list = []
    idx = 0
    until prime_list.length == number 
      prime_list.push(idx) if isPrime?(idx)
      idx += 1
    end
    prime_list
  end
end
