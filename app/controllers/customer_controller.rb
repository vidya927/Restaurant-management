class CustomerController < ApplicationController
  def home
  end

  def order
  end


  
  def view
    @price=Price.all
  end
  
  def selected
    @checkouts = Price.find(params[:customer_ids])
    # flash[:notice] = "#{@checkouts} added to cart"
     # redirect_back(fallback_location: "index")
     
         # redirect_to customercheckout_path(params[:customer_ids]), noitce: 'done !'
     
   # redirect_to "/customercheckout"
  end
  
  def checkout
      @checkouts = Price.find(params[:customer_ids])
      if @checkouts.nil?
          flash[:notice] = "not found"
      end
     @total = 0
     for c in @checkouts
       y = c.price
       @total = @total + y
     end
      
#format.json { render action: 'show', status: :created, location: @client }
   # redirect_back(fallback_location: "customercheckout")
   # @checkouts = Price.find(params[:product_ids])
  end
end
