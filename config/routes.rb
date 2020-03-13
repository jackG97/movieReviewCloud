Rails.application.routes.draw do

  get 'session/reset'

  get 'session/index'

  get 'session/ping'

  get 'session/pong'

  get 'home/set_cookie'

  get 'home/show_cookie'

  get 'home/delete_cookie'

  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :users
  resources :movies do
    resources :reviews, except: [:show, :index]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/search' => 'movies#search', :as => 'search_movie'
  root 'movies#index'
end
