Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  resources :news

  root 'main#index'

  get 'contacts' => 'main#contacts'
end
