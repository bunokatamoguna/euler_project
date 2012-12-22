require 'mathn'

class Fixnum
  def sqrt
    Math.sqrt(self)
  end
end

primes = Enumerator.new do |y|
  prime = 2
  loop do
    y << prime
    if prime == 2
      prime = 3
    else
      loop do
        prime += 2
        isPrime = true
        for n in 2..prime.sqrt
          if prime % n == 0
            isPrime = false
            break
          end
        end
        break if isPrime == true
      end
    end
  end
end

class Enumerator
  def finite_select(&block)
    Enumerator.new do |y|
      self.each do |v|
        if block.call(v)
          y << v
        else
          break
        end
      end
    end
  end
end

puts primes.finite_select {|p| p < 2000000}.to_a.inject(:+)
