Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    root to: 'tasks#index', as: :authenticated_root
  end

  unauthenticated do
    root to: 'home#index', as: :unauthenticated_root
  end

  resources :tasks, only: [:index, :new, :create, :destroy, :edit, :update]
end
