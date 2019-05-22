Rails.application.routes.draw do
  scope :api, defaults: {format: :json} do
    resources :examples
  end
  # resources :examples
  # get 'posts/index'
  # get 'posts/show'
  # get 'posts/new'
  # get 'posts/edit'
  # get 'posts/create'
  # get 'posts/destroy'
  # get 'user/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
