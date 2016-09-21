Rails.application.routes.draw do
  
  get 'welcome/index'
  
  devise_for :users
  root 'shouter/feed'

end
