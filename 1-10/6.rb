sum1 = 0
sum2 = 0

(1..100).each do |num|
  sum1 += num
  sum2 += num*num
end

p sum1*sum1 - sum2
