Rails.application.routes.draw do
  resources :banks do
    resources :branches
  end
end
