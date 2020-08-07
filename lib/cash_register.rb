require 'pry'

class CashRegister
  attr_accessor :total, :discount
  def initialize(employee_discount = nil)
    @total = 0
    @discount = employee_discount
    @items = []
  end
  
  def add_item(title, price, quantity= nil)
    @title = title 
    @items << title
    if quantity
      @total += price * quantity
    else @total += price
    end 
  end 
  
  def apply_discount 
    if @discount 
      @total = (((100-@discount.to_f)/100) * @total).to_i
      "After the discount, the total comes to $#{@total}."
    else "There is no discount to apply."
    end 
  end 
  
  def items 
    
  end 
end
