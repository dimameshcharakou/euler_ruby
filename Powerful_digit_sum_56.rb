def calc_sum(n)
  n.to_s.split('').map(&:to_i).inject(0, :+)
end

def search
  max_sum = 0
  for a in 0..100
    for b in 0..100
      sum = calc_sum(a ** b)
      max_sum = sum if sum > max_sum
    end
  end
  p "The maximum digital sum is: #{max_sum}"
end
