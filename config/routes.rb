Rails.application.routes.draw do
  root 'main#index'

  get 'contacts' => 'main#contacts'
end
