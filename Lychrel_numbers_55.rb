MIN = 1
MAX = 10_000
AMOUNT_OF_ITERATIONS = 50
STEP = 1
MIN_LENGTH = 1

def produce_palindrome?(n)
  i = STEP
  while i <= AMOUNT_OF_ITERATIONS
    n += reverse(n)
    break true if is_palindrome?(n)
    i += STEP
  end
end

def is_palindrome?(n)
  n.to_s.length > MIN_LENGTH && n == reverse(n)
end

def reverse(n)
  n.to_s.reverse.to_i
end

def find_lychrel_numbers
  lychrel_numbers = 0
  for i in MIN..MAX
    lychrel_numbers += STEP unless produce_palindrome?(i)
  end
  p "Lychrel numbers: #{lychrel_numbers}"
end
