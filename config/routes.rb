Rails.application.routes.draw do
  get 'usuario/login'

  get 'usuario/gravar'

  post 'usuario/gravar'

  get 'campanha/index'

  get 'campanha/new'

  get 'campanha/recycle'
  
  get 'campanha/home'

  get 'pdv/sell_water'

  get 'pdv/sell_gas'

  get 'pdv/sell_credit_cell'

  get 'pdv/show'

  get 'pdv/dashboard'

  get 'grafico/index'

  get 'grafico/show'
  
  get 'grafico/home'

  get 'relatorio/index'

  get 'relatorio/show'

  get 'relatorio/home'
  
  get 'registro/index'

  get 'registro/show'
  
  get 'registro/home'

  get 'cadastro/index'

  get 'cadastro/edit'

  get 'cadastro/new'
  
  post 'cadastro/new'

  get 'cadastro/show'
  
  get 'cadastro/home'
  
  post 'cadastro/salvo'

  get 'server/pagina_teste'

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
