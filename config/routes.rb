 Rails.application.routes.draw do

  get 'users/info', to: 'users#info'

  devise_for :users

  root to: "home#index"

  get 'home/index'

  # Subscribers
  get 'publications/index'
  get 'publications/show'
  
  # Admins
  namespace :admin do
    get 'publications/index'
    get 'publications/publication_params'
    get 'publications/find_publication'
    get 'publications/destroy'
    get 'publications/update'
    get 'publications/edit'
    get 'publications/show'
    get 'publications/new'
    get 'publications/create'
  end

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  
  # This is designed for our subscribers to only have read-only access to /publications
  resources :publications, only: [:index, :show]
  
  # /admin/publications
  namespace :admin do
    resources :publications
  end

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
