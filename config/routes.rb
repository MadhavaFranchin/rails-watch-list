Rails.application.routes.draw do
  get 'bookmarks/new'
  get 'bookmarks/create'
  get 'bookmarks/destroy'
  get '/', to: 'lists#index'
  resources :lists do
    resources :bookmarks, only: %i[new create]
  end
end
