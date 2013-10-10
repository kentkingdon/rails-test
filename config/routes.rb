Products::Application.routes.draw do
  
  resources :products

  root :to => 'single_page_app#index'
end
