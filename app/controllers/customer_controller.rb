class CustomerController < ApplicationController
  def home
      @price=Price.all
  end

  def order
  end


  
  def view
    @price=Price.all
  end
  
  def selected
    @checkouts = Price.find(params[:customer_ids])
    @name = params[:name]
    @qty = params[:qty]
    # flash[:notice] = "#{@checkouts} added to cart"
     # redirect_back(fallback_location: "index")
     
         # redirect_to customercheckout_path(params[:customer_ids]), noitce: 'done !'
     
   # redirect_to "/customercheckout"
  end
  
def checkout
      @checkouts = Price.find(params[:customer_ids])
      @customer_id = params[:customer_ids]
      @name = params[:name]
      @qt = params[:qtys]
      if @checkouts.nil?
          
          flash[:notice] = "not found"
      end
     @total = 0
     @q = []
     k=0
     for i in @qt
       if (i != "")
          @q[k] = i 
          k = k + 1
       end
    
     end
 
     j=0
     for c in @checkouts
       
       y = c.price 
       @total = @total + y*@q[j].to_i
       j = j + 1
     end
      #@inventoryupdate = []
     
 #     for s in @checkouts
      
  #       @inventoryupdate = Recipe.find(s.dish_name)
   #      @ingredients[] = Inventory.find(@inventoryupdate.ingredients)
    #     for k in @ingredients
     #      k.quantity_available = k.quantity_available - @inventoryupdate.required_qty_in_gm
      #     @ingredients.update(k.quantity_available)
       #  end
      #end
end

end
