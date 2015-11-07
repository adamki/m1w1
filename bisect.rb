# https://github.com/turingschool/challenges/blob/master/simple_searches.markdown

values = (1..100).to_a.sample(10).sort
found = false
t = 25

min = 0
max =values.length - 1
i = 0

loop  do
  mid = min + (max - min) / 2

  value_m = values[mid]
  puts "##{i} -- min: #{min} : max: #{max} : mid : #{mid} : want : #{t} : found: #{value_m}"
  if t == value_m
    puts "It was found"
    found = true
    break
  end

  if t < value_m
    max = mid - 1
  end
  if t > value_m
    min = mid + 1
  end
  if min > max
    puts "fail"
    break
  end
  i += 1
end
