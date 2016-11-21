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
    
  end
  
  
  

def edit_multiple

    
end
  
def update_multiple
  @orders = Order.find(params[:order_ids])
   # Temp.insert()
    #flash[:notice] = "#{orders.} added to cart"
    redirect_back(fallback_location: "index")
    

  # @quantity = Recipe.search(search)
 #  Temp.update_all()
end


  
  def accept
    
  end


  def prepare
  
    @order = Order.all
    
      @accepted_orders = params[:orders]

    if params[:commit]
      render "true"
    end
  end
  
  def edit
    @recipes = Recipe.find(params[:id])
  end
  
  private
   def Recipe_params
     params.require(:recipes).permit(:recipes, :ingredients, :required_qty_in_gm)
   end
   
end
