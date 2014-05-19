FinanceManager::Application.routes.draw do
  root 'dashboard#index'
  resources :transactions
  resources :categories
end
