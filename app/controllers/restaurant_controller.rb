class RestaurantController < ApplicationController
  def home
  end

  def chef
  end

  def manager
  end

  def customer
  end

  def menu
    @price=Price.all
  end
  
end
