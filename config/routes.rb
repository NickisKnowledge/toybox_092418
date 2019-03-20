Rails.application.routes.draw do
  resources :toymakers do
    resources :toys, only: %i(new index)
  end
  
  # resources :users, only: [:index, :show]

  # VERB -- PATH (URL) -- CONTROLLER#ACTION
  get '/toys', to: 'toys#index'
  get '/toys/new'
  post '/toys', to: 'toys#create'
  get '/toys/:id', to: 'toys#show', as: 'toy'
  get '/toys/:id/edit', to: 'toys#edit', as: 'toy_edit'
  patch '/toys/:id', to: 'toys#update'
  delete '/toys/:id', to: 'toys#destroy'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # resources :toys
end
