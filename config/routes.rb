Rails.application.routes.draw do


  namespace :gas_buddy do
  get 'price/add'
  end

  namespace :gas_buddy do
  get 'price/get'
  end

  namespace :gas_buddy do
  get 'price/update'
  end

  get 'campaign/index'
# resources :compaign

  get 'price/edit'

  get 'price/index'

  get 'price/new'

  get 'price/show'

  get 'say/hello'

  get 'say/parameter'

  get 'transaction/edit'

  get 'transaction/index'

  get 'transaction/new'

  get 'transaction/show'

   get 'user/edit'

  get 'user/index'

  get 'user/new'

  get 'user/show'

   get 'vendor/edit'

  get 'vendor/index'

  get 'vendor/new'

  get 'vendor/show'


  get 'welcome/index'


  





  #get 'welcome/index'

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
