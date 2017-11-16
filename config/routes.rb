Rails.application.routes.draw do

  resources :stories do
    resources :sentences
  end
  resources :stories do
    resources :users
  end
  resources :users do
    resources :sentences
  end
  resources :users do
    resources :stories
  end
  resources :sentences do
    resources :images
  end
  resources :images do
    resources :sentences
  end
end
