require 'pry'

class CashRegister
  attr_accessor :total, :discount
  def initialize(employee_discount = nil)
    @total = 0
    @discount = employee_discount
  end
  
  def add_item(title, price, quantity= nil)
    @title = title 
    if quantity
      @total += price * quantity
    else @total += price
    end 
  end 
  
  def apply_discount 
    if @discount 
      
    else 
    end 
  end 
end
