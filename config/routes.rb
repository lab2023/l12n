L12n::Engine.routes.draw do
  resources :cities, only: [:index]
  resources :districts, only: [:index]
end
