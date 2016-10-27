Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers
  
  #resources :pokemon do
  #  get 'capture'
  #end
  #define capture_path => "/capture/(:id)"
  #get "capture_path" as "/capture/(:id)" => "pokemon#capture"
  
  #resources :pokemon, as: "capture", only: [:get]
  
  patch 'capture', to: :capture, controller: 'pokemon'
  patch 'damage', to: :damage, controller: 'pokemon'
  
  get 'pokemons/new', to: :show, controller: 'pokemon'
  post 'pokemons', to: :new_pokemon, controller: 'pokemon'
end
