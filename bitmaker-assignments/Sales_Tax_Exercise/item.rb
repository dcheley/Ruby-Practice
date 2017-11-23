#10% tax on all goods + 5% on imported goods
class Item
  attr_reader :name
  attr_reader :price
  attr_reader :tax_cost

  def initialize(name, price)
    @name = name
    @price = price.to_f
    @import_duty = rand(2)
    @tax_cost = tax.to_f
  end

  def buy
    "You bought #{@name} for $#{@price}!... Plus $#{@tax_cost} for tax!"
  end

  def tax
    if @import_duty == 0
      tax = 0.1 * @price
    elsif @import_duty == 1
      tax = 0.15 * @price
    end
  end
end
