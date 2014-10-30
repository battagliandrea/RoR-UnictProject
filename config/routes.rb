Rails.application.routes.draw do




  #route con parametro per pannello amministrazione
  get 'admin/show_product/:id', to: 'admin#show_product' , as: 'admin_product_show'
  get 'admin/edit_product/:id', to: 'admin#edit_product' , as: 'admin_product_edit'

  get 'admin/new_product', to: 'admin#new_product' , as: 'admin_product_new'

  get 'admin/show_order/:id', to: 'admin#show_order' , as: 'admin_order_show'

  get 'admin/show_user/:id', to: 'admin#show_user' , as: 'admin_user_show'


  #errori

  get 'errors/404'

  get 'errors/500'

  get 'errors/403'

  #amministrazione

  get 'admin/index'

  get 'admin/products'

  get 'admin/users'

  get 'admin/orders'

  #pagine iniziali

  get 'home/index'

  get 'home/about'



  #negozio

  get 'store/index'

  resources :products

  resources :orders

  resources :line_items

  resources :carts


  root :to => 'home#index'


  #devise

  devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks' }

  match '/users/:id/finish_signup' => 'users#finish_signup', via: [:get, :patch], :as => :finish_signup




  resources :products do
    get :who_bought, on: :member
  end


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
