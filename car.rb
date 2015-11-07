#https://github.com/turingschool/lesson_plans/blob/master/ruby_01-object_oriented_programming_with_ruby/object_oriented_programming.markdown
class Car
  attr_accessor :color, :wheel_count

  def initialize
    @running = false
  end

  def start
    if @running == false
      puts 'Starting Up!'
      @running = true
    else
      puts "FAIL"
    end
  end


  def horn
    p "Beeeeep!"
  end

  def drive(distance)
    puts "I'm driving #{distance} miles."
  end

  def report_color
    puts "I am #{color}"
  end

  def wheel_count(wheel_count)
    puts "This sweet ride is sitting on #{wheel_count} wheels"
  end
end

my_car = Car.new
my_car.color = 'purple'
my_car.wheel_count(18)
my_car.horn
my_car.drive(12)
puts "Here is your #{my_car.color} car"
my_car.start
my_car.start



my_car.report_color
my_second_car= Car.new
my_second_car.wheel_count(2)
