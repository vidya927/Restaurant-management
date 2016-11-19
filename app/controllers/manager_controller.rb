class ManagerController < ApplicationController
  def home
  end

  def view
    @inventory = Inventory.new
  end

  def create
    @inventory = Inventory.new(inventory_params)
    if @inventory.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to '/managerview'
        # Handle a successful save.
    else
      render 'restaurant/menu'
    end
  end
  
  def update
  end
  private

    def inventory_params
      params.require(:inventory).permit(:item_name, :quantity_available)
    end
end
