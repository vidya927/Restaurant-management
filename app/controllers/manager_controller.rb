class ManagerController < ApplicationController
  def home
    @inventory = Inventory.all
  end

  def view
   @inventory = Inventory.all
  end

  def update
    @inventory = Inventory.new
  end
  
  def create
     @inventory = Inventory.new(inventory_params)
    if @inventory.save
      flash[:success] = "saved successfully"
      redirect_to '/managerupdate'
    else
      render '/restaurantmenu'
    end
  end
  
  private
   def inventory_params
     params.require(:inventory).permit(:item_name, :quantity_available)
   end
  
end
