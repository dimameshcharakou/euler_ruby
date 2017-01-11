def prime?(num)
  return false if num <= 1
  Math.sqrt(num).to_i.downto(2).each do |i|
    return false if num % i == 0
  end
  true
end

sum_all = 1.0
sum_prime = 0
a = 3 # a square side length
d = 1 # start
loop do
  n = d + 1 # start new side
  x = n + a - 2 # number from diagonal
  for _ in 1..3 do
    sum_prime += 1 if prime?(x)
    x += a - 1
  end
  sum_all += 4
  if sum_prime / sum_all < 0.1
    break
  end
  a += 2
  d = x
end
puts a # print a square side length
