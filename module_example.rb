module Drivable
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

class Car
  include Drivable

  def initialize(input_options)
    attr_accessor :fuel, :make, :model
    @fuel = input_options[:fuel]
    @make = input_options[:make]
    @model = input_options[:model]
  end

  def honk_horn
    puts 'Beeeeeeep!'
  end
end

class Bike
  include Drivable

  def initialize(input_options)
    attr_accessor :type, :gears
    @type = input_options[:type]
    @gears = input_options[:gears]
  end

  def ring_bell
    puts 'Ring ring!'
  end
end
