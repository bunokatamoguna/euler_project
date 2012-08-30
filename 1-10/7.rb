primes = Enumerator.new do |y|
  number = 2
  loop do
    y << number
    if number == 2
      number = 3
    else
      loop do
        number += 2
        result = catch(:done) do
          for i in 2..Integer(Math.sqrt(number))
            throw(:done, false) if (number % i).zero?
          end
          throw(:done, true)
        end
        break if result
      end
    end
  end
end

p primes.first(10001).last
