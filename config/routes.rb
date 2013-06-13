News::Application.routes.draw do
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/logout' => 'session#destroy'

  get '/home' => 'users#index'

  resources :users

  resources :newspapers do
    resources :subscription_plans
  end
end
