require "./clothing.rb"

class OuterWear < Clothing
  attr_accessor :insulation, :warmth_rating
  def initialize(input_options)
    super(input_options)
    @insulation = input_options[:insulation]
    @warmth_rating = input_options[:warmth_rating]
  end
end