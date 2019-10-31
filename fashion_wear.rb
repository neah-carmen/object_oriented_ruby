require "./clothing.rb"

class FashionWear < Clothing
  def initialize(input_options)
    super(input_options)
    @sale = input_options[:sale]
  end

  def sale
    if @sale == true
      puts 'On sale!'
    end
  end
end