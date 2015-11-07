# (1..1000).each do |x|
# sfb = x.modulo(3) == 0 && x.modulo(5) == 0 && x.modulo(7) == 0
# sf = x.modulo(3) == 0 && x.modulo(7) == 0
# sb = x.modulo(5) == 0 && x.modulo(7) == 0
# e = x.modulo(3) == 0 && x.modulo(5) == 0
# f = x.modulo(3) == 0
# b = x.modulo(5) == 0
# s = x.modulo(7) == 0
#   puts case
#   when sfb then "SuperFizzBuzz"
#   when sf then "SuperFizz"
#   when sf then "SuperBuzz"
#   when e then x
#   when f then "Fizz"
#   when b then "Buzz"
#   when s then "Super"
#   else x
#   end
# end

puts (1..100).map {|i|
      x = ''
      x += 'Fizz' if i % 3 == 0
      x += 'Buzz' if i % 5 == 0
      (x.empty? ? i : x);
    }
