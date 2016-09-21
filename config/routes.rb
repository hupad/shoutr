Rails.application.routes.draw do
  
  root 'shouter#feed'
  get  '/shout/new', to: 'shouter#new', as: :new_shout
  post 'shout', to: 'shouter#create'
  get 'welcome/index'

  devise_for :users

end