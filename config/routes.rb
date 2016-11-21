Rails.application.routes.draw do

  get '/customerhome', to: 'customer#home'

  get '/customerorder', to: 'customer#order'

  get '/customerview', to: 'customer#view'

  get '/chefhome' ,to: 'chef#home'

  get '/chefview' , to: 'chef#view'

 get '/chefedit' , to: 'chef#edit'

  get '/chefadd' , to: 'chef#add'
  
  post '/chefedit' , to: 'chef#edit'

  post '/chefadd' , to: 'chef#create'
  
  
  get '/chefprepare' , to: 'chef#prepare'

   get '/restauranthome' , to: 'restaurant#home'

  get '/restaurantchef' ,to: 'restaurant#chef'

  get '/restaurantmanager' ,to:'restaurant#manager'

  get '/restaurantcustomer' ,to:'restaurant#customer'
  
  get '/inventoryview' ,to:'inventory#view'
  
  get '/inventoryhome' ,to:'inventory#home'
  
  get '/inventoryindex' ,to:'inventory#index'

  get '/menu' , to: 'restaurant#menu'
  
  
  root 'restaurant#home'
  
  resources :inventories
  

  
  


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
