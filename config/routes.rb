Rails.application.routes.draw do
  resources :projects
  devise_for :users
  #get 'pages/index'
  
  root 'pages#index'
  get "pages/about" => "pages#about"
  
  get "projects/:id" => "projects#index"
  get "/workspace/:id" => "workspace#index", as: :workspace
  get "projects/added/:id" => "projects#added", as: :added
  
  get "/purchases/myCart" => "purchases#myCart"
  get "/purchases/checkout" => "purchases#checkout"
  post "/purchases/completed" => "purchases#completed"
  get "purchases/added/:id" => "purchases#added"
  
  #get "*path", via: :all, to: "errors#not_found"
  match "/404", :to => "errors#not_found", :via => :all
  match "/422", :to => "errors#reject", :via => :all
  match "/500", :to => "errors#unexpected", :via => :all
  #get "*all", via: :all, to: "errors#unexpected"

    resources :standards
    resources :perf_exps

  resources :dashboard    
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
