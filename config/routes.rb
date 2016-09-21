Rails.application.routes.draw do
  
  root 'shouter#feed'
  get 'welcome/index'
  devise_for :users

end
