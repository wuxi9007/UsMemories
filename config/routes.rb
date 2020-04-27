Rails.application.routes.draw do
  get 'static_pages/blog'

  resources :places

  root 'places#index'
  # set default route for wrong routes
  get '*path' => redirect('/')

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
