class ManagerController < ApplicationController
  def home
    @inventory = Inventory.all
  end

  def view
    @inventory = Inventory.all
  end

  def create
    @inventory = Inventory.new(inventory_params)
    if @inventory.save
      flash[:success] = "saved successfully"
      redirect_to '/managerview'
    else
      render '/restaurantmenu'
    end
  end
  
  private
   def inventory_params
     params.require(:inventory).permit(:item_name, :quantity_available)
   end
  
  def update
    @inventory = Inventory.new
  end
  

end
