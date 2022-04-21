Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  namespace :api do
    root "home#index"
  end

  get '/*path', to: 'static_pages#index'
end
