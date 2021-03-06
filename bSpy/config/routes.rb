Rails.application.routes.draw do
  resources :profiles
  devise_for :users
  devise_scope :user do
    authenticated :user do
      root 'home#home', as: :authenticated_root
    end

    unauthenticated :user do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  resources :users

  resources :imagens

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

   get '/home' => 'home#home'
   get '/imagens' => 'imagens#index'

   post '/salvar' => 'imagens#salvar'

   post '/autenticar' => 'users#autenticar'

   post 'imagens/:id/update', :to => 'imagens#update'

   get 'imagens/:id', :to => 'imagens#edit'

   delete 'imagens/:id', :to => 'imagens#destroy'

   get '/mostrar/:id', :to => 'imagens#mostrar', :as => 'mostrar'

   get 'show_image' => 'imagens#show_image'

   get '/pesquisarData' =>'imagens#pesquisarData'

   get '/pesquisarLocal' => 'imagens#pesquisarLocal'

   get '/pesquisarCamera' => 'imagens#pesquisarCamera'

   get '/desenvolvedores' => 'home#desenvolvedores'

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
