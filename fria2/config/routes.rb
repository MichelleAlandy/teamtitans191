Rails.application.routes.draw do
  get 'admin/index'

  get 'committee_member/index'

  get 'dean/index'

  devise_for :users
  resources :proposals
  resources :reviews
  resources :users

  
  root :to => 'landing_page#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
