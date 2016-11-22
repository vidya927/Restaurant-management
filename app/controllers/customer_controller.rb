class CustomerController < ApplicationController
  def home
  end

  def order
  end

  def view
    @price=Price.all
    
  end
end
