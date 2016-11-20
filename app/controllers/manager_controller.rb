class ManagerController < ApplicationController
  def home
    @inventory = Inventory.all
  end
  def search
  @inventory = Inventory.all
  if params[:search]
    @inventory = Inventory.search(params[:search]).order("created_at DESC")
  else
    @inventory = Inventory.all.order("created_at DESC")
  end
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
