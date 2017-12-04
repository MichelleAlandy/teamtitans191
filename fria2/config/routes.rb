Rails.application.routes.draw do


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
  get 'researcher/index', as: 'researcher_home'
  get 'admin/index', as: 'admin_home'
  get 'committee_member/index', as: 'committee_member_home'
  get 'dean/index', as: 'dean_home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
