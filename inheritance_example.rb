class Vehicle
  def initialize
    @speed = 0
    @direction = 'north'
  end

  def accelerate
    @speed += 10
  end

  def brake
    @speed = 0
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Vehicle
  def initialize
    super
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  def initialize
    super
  end
  
  def ring_bell
    puts "Ring ring!"
  end
end