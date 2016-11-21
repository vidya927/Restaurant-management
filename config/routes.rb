rails.application.routes.draw do
 resources :inventory
  root 'inventory#index'
 
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

  get '/menu' , to: 'restaurant#menu'
  
<<<<<<< HEAD
  get '/managerhome' , to: 'manager#home'

  get '/managerview' , to: 'manager#view'
  
  get '/managerupdate' , to: 'manager#update'
  get '/managerupdate' , to: 'manager#view'
  
  get '/managersearch' , to: 'manager#search'
  
  
  post '/managerupdate' , to: 'manager#create'
  
  root 'restaurant#home'
  
  Rails.application.routes.draw do
  root   'static_pages#home'
  get    '/help',    to: 'static_pages#help'
  get    '/about',   to: 'static_pages#about'
  get    '/contact', to: 'static_pages#contact'
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
end
  
  resources :inventories
=======
 
>>>>>>> origin/branch2
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
