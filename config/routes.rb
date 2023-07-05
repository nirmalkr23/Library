Rails.application.routes.draw do
 
  get 'getAllBook'=>'book#index'
  get 'getBookById'=>'book#show'

  resources :books, only: [:create]
end
