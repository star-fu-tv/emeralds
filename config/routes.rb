Emeralds::Application.routes.draw do

  get 'quiz/index'

  root :to => "quiz#index"
  post 'pusher/auth'
  post 'quiz/join'
  match 'quizmaster/question/:id', to: 'quizmaster#question', via: [:get, :post]
  match 'quiz/question/:id', to: 'quiz#question', via: [:get, :post]
  match 'quiz/waiting', to: 'quiz#waiting', via: [:get, :post]
  match 'quiz/end', to: 'quiz#end', via: [:get, :post]
  match 'quiz/correct/:id', to: 'quiz#correct', via: [:put]
  match 'quiz/question', to: 'quiz#question', via: [:get, :post]
  match 'quizmaster/start', to: 'quizmaster#start', via: [:get, :post]
  match 'quizmaster/end', to: 'quizmaster#end', via: [:get, :post]
  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'quiz/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]
  get "quizmaster/start"
  get "quizmaster/question"
  post "quizmaster/question"
  get "quizmaster/end"

  resources :questions
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
