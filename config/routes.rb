Rails.application.routes.draw do
  get root 'static_pages#top'
  get 'static_pages/top'
  get 'static_pages/roulette'
  post 'static_pages/post'
  get 'static_pages/result'

  resources :materials
  resources :foods
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
