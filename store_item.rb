# Exercise:
# A. Use the terminal to create a new folder in your actualize folder called object_oriented_ruby.
# B. Create a new file in the folder called store_item.rb and open it in Sublime.
# C. Use hashes with symbols to represent the following scenario:
# C.1 - You are the owner of a store that sells items (you decide what specifically). Each item has various properties such as color, price, etc.
# C.2 - Represent 3 items using hashes. Each hash should have the same keys with different values.
# C.3 - Be sure to use symbols for the keys. Try creating hashes using both types of hash symbol syntaxes. (Ruby syntax {:a => 123} vs. “JavaScript” syntax {a: 123}).
# Bonus: Read more about Ruby’s hash symbol syntax:

winter_coat = { :brand => 'Canada Goose', :color => 'red', :price => '$500', :warm => true }
rain_coat = { :brand => 'Lands End', :color => 'yellow', :price => '$80', :warm => false }
denim_jacket = { brand: 'GAP', color: 'blue', price: '$50', warm: false }

winter_coat.each do |key, value|
  puts "The #{key} is #{value}."
end

rain_coat.each do |key, value|
  puts "The #{key} is #{value}."
end

denim_jacket.each do |key, value|
  puts "The #{key} is #{value}."
end

# Exercise: Rewrite your store items using a class instead of a hash.
# a) Choose which attributes should have “reader” methods and which attributes should have “writer” methods.
# b) Create an instance from your store item class. Use puts statements to print the 3 attributes individually to the terminal.
# Exercise: Replace your “reader” and “writer” methods using the attr_reader and attr_writer shortcuts!

# class for storing items
class StoreItem
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

class OuterWear < StoreItem
  attr_accessor :insulation, :warmth_rating
  def initialize(input_options)
    super(input_options)
    @insulation = input_options[:insulation]
    @warmth_rating = input_options[:warmth_rating]
  end
end

class FashionWear < StoreItem
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

winter_coat = OuterWear.new(
  brand: 'Canada Goose',
  color: 'red',
  price: '500',
  stock: '9',
  currency: '$',
  insulation: 'fleece',
  warmth_rating: 'very warm'
)
rain_coat = OuterWear.new(
  brand: 'Lands End',
  color: 'yellow',
  price: '80',
  stock: '4',
  currency: '$',
  insulation: 'none',
  warmth_rating: 'warm'
)
denim_jacket = FashionWear.new(
  brand: 'GAP',
  color: 'blue',
  price: '50',
  stock: '1',
  currency: '$',
  sale: true
)

p denim_jacket.stock
denim_jacket.item_sold
p denim_jacket.stock
denim_jacket.sale
p "The brand is #{winter_coat.brand} and its color is #{winter_coat.color}."
p winter_coat.warmth_rating
p rain_coat.price
p rain_coat.tax_total
