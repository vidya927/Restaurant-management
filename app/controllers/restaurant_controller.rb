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
     @inventory = Inventory.new
  end
end
