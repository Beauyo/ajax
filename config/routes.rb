Rails.application.routes.draw do
  root 'games#index'

  get 'game_form', to:'games#form'

  resources :games do
    resources :charaters
  end
end
