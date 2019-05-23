Rails.application.routes.draw do
  devise_for :users
  scope :api, defaults: {format: :json} do
    resources :posts
  end
  get 'user/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
