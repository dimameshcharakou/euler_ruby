def digits(number)
  number.to_s.length
end

fractions = 0
x = 0
i = 1

while i <= 1000 do
  n = Rational(1, 2 + x)
  number = 1 + n
  if digits(number.numerator) > digits(number.denominator)
    fractions += 1
  end
  i += 1
  x = n
end

p fractions
