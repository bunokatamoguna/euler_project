for a in 1...333
  for b in (a+1)...1000
    c = 1000 - a - b
    break if b >= c
    puts a*b*c if a*a + b*b == c*c
  end
end
