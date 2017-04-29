Rails.application.routes.draw do


  get 'pages/home'

  resources :cities, only: [:index] do
    resources :lists, only: [:index, :show]
  end

  resources :lists

  devise_for :users,
  controllers: { omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users'}

  root to: 'welcome#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
