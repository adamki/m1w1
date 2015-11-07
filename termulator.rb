require 'pry'

value_1 = ARGV[0].to_i
value_2 = ARGV[-1].to_i
operator = ARGV[1]
# binding.pry;

# puts ARGV
case operator
when '+'
  p value_1 + value_2
when '-'
  p value_1 - value_2
when '/'
  p value_1 / value_2
else
  p value_1 * value_2
end
