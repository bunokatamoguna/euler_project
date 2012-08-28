primes = Enumerator.new do |y|
  number = 2
  loop do
    y << number
    if number == 2
      number = 3
    else
      loop do
        number += 2
	isPrime = catch(:done) do
          for i in 2..number-1
            throw(:done, false) if number % i == 0
	  end
	  throw(:done, true)
	end
	break if isPrime
      end
    end
  end
end

val = 600851475143

while val > 1
  prime = primes.next
  val /= prime if val % prime == 0
end

p prime
