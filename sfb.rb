(1..1001).each do |x|
    if x%3==0&&x%5==0&&x%7==0
      puts "SuperFizzBuzz"
    elsif x%3==0&&x%7==0
      puts "SuperFizz"
    elsif x%5==0&&x%7==0
      puts "SuperBuzz"
    elsif x%3==0 &&x%5==0
      puts "#{x}"
    elsif x%3==0
      puts "Fizz"
    elsif x%5==0
      puts "Buzz"
    elsif x%7==0
      puts "Super"
    else
      puts "#{x}"
    end
  end
