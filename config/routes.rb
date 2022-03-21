Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'pages#home'
  resources :users  #,only:[:show, :index :new :create]
    resources :bank_accounts  
    resources :addresses ,only:[:show]                             #today's edit
    #resources :bank_accounts ,only:[:show]
  # Defines the root path route ("/")
  # root "articles#index"
end
