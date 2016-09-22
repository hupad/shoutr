Rails.application.routes.draw do
  
  get 'welcome/index'

  root 'shouter#feed'
  get  'shout/new', to: 'shouter#new', as: :new_shout
  post 'shout', to: 'shouter#create', as: :shouts
  get 'shout/:id', to: 'shouter#show', as: :shout
  post 'shout/:id/like', to: "shouter#like"
  post 'shout/:id/comment', to: "shouter#comment"

  get 'badges/new', to: "badges#new", as: :new_badge
  post 'badges', to: "badges#create", as: :badges

  devise_for :users

end