require_relative 'item'

class Receipt
  attr_accessor :list

  def initialize
    @list = []
    # @sub_total = 0
    # @tax_total = 0
    # @total_cost = 0
  end

  def add_item(item)
    @list << item
  end

  def sub_total
    sub_t = 0
    @list.each do |i|
      sub_t += i.price
    end
    sub_t
  end

  def tax_total
    total = 0
    @list.each do |i|
      total += i.tax_cost.to_i
    end
    total
  end

  def total_cost
    total_cost = sub_total + tax_total
  end

  def result
    puts "Your total comes to $#{total_cost}!"
  end
end
