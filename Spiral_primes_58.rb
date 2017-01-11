def prime?(num)
  return false if num <= 1
  Math.sqrt(num).to_i.downto(2).each do |i|
    return false if num % i == 0
  end
  true
end

primes = 0
a = 3 # a square side length
# a * 2 - 1 - total diagonal numbers
# a^2 - (a - 1) - bottom right corner
# a^2 - 2 * (a - 1) - bottom left corner
# a^2 - 3 * (a - 1) - top left corner
# a^2 - 4 * (a - 1) - top right corner
loop do
  for i in 1..4 do
    corner = a ** 2 - i * (a - 1)
    primes += 1 if prime?(corner)
  end
  if primes.to_f / (a * 2 - 1) < 0.1
    break
  end
  a += 2
end
puts a # print a square side length
