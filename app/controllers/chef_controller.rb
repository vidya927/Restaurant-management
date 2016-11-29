class ChefController < ApplicationController
  
  def index
    @order = Chef.all
  end
  
  def add
    @recipes = Recipe.new
  end
  
  def create
    while !(@recipes.save)
      @recipes = Recipe.new(Recipe_params)
    end
    if @recipes.save
      flash[:success] = "saved successfully"
      redirect_to '/chefview'
    else
      render '/chefview'
    end
  end
  
  def home
  end

  def view
     @prices= Price.all
  end
  
  def accept
    
  end


  def prepare
    @orders=Order.all
  end
  
  def edit
    @recipes = Recipe.find(params[:id])
  end
  
  private
   def Recipe_params
     params.require(:recipes).permit(:recipes, :ingredients, :required_qty_in_gm)
   end
   
end
