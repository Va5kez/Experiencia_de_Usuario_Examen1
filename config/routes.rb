Rails.application.routes.draw do
  root "home#index"

  get "/prestamos" => "loans#index"
  
  resources :loans do
    resources :payments
  end
end
