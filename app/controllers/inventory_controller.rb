class InventoryController < ApplicationController
  before_action :set_inventory, only: [:show, :edit, :update, :destroy]


  def new
    @inventory = Inventory.new
  end
  
  def edit
  end

  def create
    @inventory = Inventory.new(inventory_params)

    respond_to do |format|
      if @inventory.save
        format.html { redirect_to @inventory, notice: 'Ingredient was successfully added.' }
        format.json { render :show, status: :created, location: @inventory }
      else
        format.html { render :new }
        format.json { render json: @inventory.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @inventory.update(inventory_params)
        format.html { redirect_to @inventory, notice: 'Ingredient was successfully updated.' }
        format.json { render :show, status: :ok, location: @inventory }
      else
        format.html { render :edit }
        format.json { render json: @inventory.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @inventory.destroy
    respond_to do |format|
      format.html { redirect_to inventory_index_path, notice: 'Ingredient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
    def set_inventory
      @inventory = Inventory.find(params[:id])
    end
  
    def index
      @inventory = Inventory.all
      if params[:index]
      @inventory = Inventory.index(params[:index]).order("item_name asc")
      else
      @inventory = Inventory.all.order("item_name asc")
      end
    end
    
   
    
    
    
    def inventory_params
      params.require(:inventory).permit(:item_name, :quantity_available)
    end
end
