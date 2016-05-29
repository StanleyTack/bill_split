Rails.application.routes.draw do
  devise_for :users
  root 'transactions#index'
  # Routes for the Payment resource:
  # CREATE
  get "/payments/new", :controller => "payments", :action => "new"
  post "/create_payment", :controller => "payments", :action => "create"

  # READ
  get "/payments", :controller => "payments", :action => "index"
  get "/payments/:id", :controller => "payments", :action => "show"

  # UPDATE
  get "/payments/:id/edit", :controller => "payments", :action => "edit"
  post "/update_payment/:id", :controller => "payments", :action => "update"

  # DELETE
  get "/delete_payment/:id", :controller => "payments", :action => "destroy"
  #------------------------------

  # Routes for the Group resource:
  # CREATE
  get "/groups/new", :controller => "groups", :action => "new"
  post "/create_group", :controller => "groups", :action => "create"

  # READ
  get "/groups", :controller => "groups", :action => "index"
  get "/groups/:id", :controller => "groups", :action => "show"

  # UPDATE
  get "/groups/:id/edit", :controller => "groups", :action => "edit"
  post "/update_group/:id", :controller => "groups", :action => "update"

  # DELETE
  get "/delete_group/:id", :controller => "groups", :action => "destroy"
  #------------------------------

  # Routes for the Beneficiary resource:
  # CREATE
  get "/beneficiaries/new", :controller => "beneficiaries", :action => "new"
  post "/create_beneficiary", :controller => "beneficiaries", :action => "create"

  # READ
  get "/beneficiaries", :controller => "beneficiaries", :action => "index"
  get "/beneficiaries/:id", :controller => "beneficiaries", :action => "show"

  # UPDATE
  get "/beneficiaries/:id/edit", :controller => "beneficiaries", :action => "edit"
  post "/update_beneficiary/:id", :controller => "beneficiaries", :action => "update"

  # DELETE
  get "/delete_beneficiary/:id", :controller => "beneficiaries", :action => "destroy"
  #------------------------------

  # Routes for the Transaction resource:
  # CREATE
  get "/transactions/new", :controller => "transactions", :action => "new"
  post "/create_transaction", :controller => "transactions", :action => "create"

  # READ
  get "/transactions", :controller => "transactions", :action => "index"
  get "/transactions/:id", :controller => "transactions", :action => "show"

  # UPDATE
  get "/transactions/:id/edit", :controller => "transactions", :action => "edit"
  post "/update_transaction/:id", :controller => "transactions", :action => "update"

  # DELETE
  get "/delete_transaction/:id", :controller => "transactions", :action => "destroy"
  #------------------------------

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
