i1, i2, sum = 1, 2, 0

while i1 <= 4000000 do
  i1, i2 = i2, i1 + i2
  sum += i1 if i1 % 2 == 0
end

p sum
