acc = 0
i = 1
loop do
  j = 1
  loop do
    size = (j ** i).to_s.size
    if size == i
      acc += 1
      j += 1
    elsif size < i
      j += 1
    else
      break
    end
  end
  if i == 100
    break
  else
    i += 1
  end
end

p acc
