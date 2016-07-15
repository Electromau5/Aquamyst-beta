Rails.application.routes.draw do

  devise_for :sellers, :path => '', :path_names => { :sign_up => 'thenorthremembers' }, 
                                     controllers: {registrations: 'registrations'}

  resources :sellers, only: [:show]

  root 'listings#landing'
  resources :listings

  resources :categories, except: [:destroy]
  resources :subcategories, except: [:destroy]

  get 'men' => 'subcategories#men', path: 'subcategories/:id/men'
  get 'women' => 'subcategories#women', path: 'subcategories/:id/women'
  get 'both' => 'subcategories#both', path: 'subcategories/:id/both'

  resources :applicants, only: [:new, :create]
  get 'rainsofcastamere', to: 'applicants#index'
  get 'thankyou', to: 'pages#thankyou'
  get 'about', to: 'pages#about'

  get 'listings/:id/remove_image2', to: 'listings#remove_image2', as: 'remove_listing_image2'

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
