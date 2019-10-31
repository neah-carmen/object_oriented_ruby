# class for storing items
class Clothing
  attr_accessor :brand, :color
  attr_reader :stock, :currency
  attr_writer :price

  def initialize(input_options)
    @brand = input_options[:brand]
    @color = input_options[:color]
    @price = input_options[:price]
    @stock = input_options[:stock]
    @currency = input_options[:currency]
  end

  def item_sold
    @stock = @stock.to_i - 1
  end

  def price
    "#{@curreny}#{@price}"
  end

  def tax_total
    chicago_tax = 1.1025
    @tax_total = @price.to_f * chicago_tax.to_f
    "#{@currency}#{@tax_total}"
  end
end