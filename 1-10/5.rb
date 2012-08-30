def gcd(a, b)
  max = a > b ? a : b
  min = a > b ? b : a

  if (max%min).zero?
    min
  else
    gcd(max - min * Integer(max/min), min)
  end
end

val = 20
19.downto(2) do |num|
  val *= Integer(num/gcd(val, num))
end

p val
