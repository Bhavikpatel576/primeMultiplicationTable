
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
end
