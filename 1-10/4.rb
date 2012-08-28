candidates = []

999.downto(100) do |x|
  999.downto(100) do |y|
    candidates << x*y if (x*y).to_s == (x*y).to_s.reverse
  end
end

puts candidates.sort.last(1)
