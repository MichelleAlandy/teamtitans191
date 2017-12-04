Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'researcher/index'

  get 'admin/index'

  get 'committee_member/index'

  get 'dean/index'

  devise_for :users
  resources :users do
    resources :committee_members do
      resources :proposals, only: [:index, :read] do
        resources :reviews, only: [:index, :create, :update, :vote]
      end
    end
    resources :deans do
      resources :proposals, only: [:index, :read] do
        resources :reviews, only: [:index, :read]
      end
    end
    resources :admins do
      resources :proposals do
        resources :reviews
      end
    end
    resources :researchers do
      resources :proposals, only: [:index, :read, :new, :update, :delete] do
        resources :reviews, only: [:index, :read]
      end
    end
  end

  root :to => 'landing_page#index'
  post '/' => 'landing_page#index', as:'home_page'
  get 'proposals/index' => 'proposals#index', as:'proposals_page'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
