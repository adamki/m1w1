##This is sample code from class with Jeff

class Car
  attr_reader :accelerator , :brake_pedal # this is the same as defining a car methodthat equals @car
  def initialized  # when a car is initialized..it getsa brake pedal
    @brake_pedal = BrakePedal.new(self)
    @accelerator = AcceleratorPedal.new
    ###if it's a tesla
    @front_passenger_wheel = Wheel.new
    @front_driver_wheel = Wheel.new
    @rear_passenger_wheel = Wheel.new
    @rear_driver_wheel = Wheel.new
  end

  def ignite
    start_engine
  end

  def start_engine
    'Vrrrom' #vroom is then passed as a response back to ignite, then to turn_ignition, then to george.turn_ignition ...etc etc
  end

end
class Wheel
  def initialize

  end
end



class Driver
  def get_in(car)
    @car = car
  end
  def stop_car
    car.brake_pedal.push
  end
  def turn_ignition
    car.ignite
  end
  def accelerate_car
    car.accelerate.push
  end
end

class brake_pedal
  attr_reader :car
  def initialized(car)
    @car = my_car
  end
  def push
    car.wheels.each{|wheel| wheel.brake}
    'SCREEECH!'
  end
end

george = Driver.new
timothy = Car.new

george.car(timothy)# <<--exisiting method of Car class
#you can start writing methods first AND THEN makke the car class meet those methods
george.turn_ignition #you can plan what you want george to do with the car... and THEN write methods for the car class
george.accelerate_car#you can plan what you want george to do with the car... and THEN write methods for the car class
george.stop_car
