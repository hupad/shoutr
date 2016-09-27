Rails.application.routes.draw do
  
  get 'welcome/index'

  root 'shouter#feed'
  get  'shout/new', to: 'shouter#new', as: :new_shout
  post 'shout', to: 'shouter#create', as: :shouts
  get 'shout/:id', to: 'shouter#show', as: :shout
  
  post 'shout/:id/like', to: "shouter#like", as: :like_shout
  delete 'shout/:id/like', to: "shouter#unlike", as: :unlike_shout
  
  get 'shout/:id/comment', to: "comments#index", as: :comments
  post 'shout/:id/comment', to: "comments#create", as: :new_comment

  get 'badges/new', to: "badges#new", as: :new_badge
  post 'badges', to: "badges#create", as: :badges

  get 'hustlers', to: "shouter#hustlers", as: :top_hustlers

  get 'profile/:user_id', to: "profile#index", as: :user_profile

  devise_for :users, :controllers => { registrations: 'registrations' }

end