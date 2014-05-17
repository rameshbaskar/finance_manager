FinanceManager::Application.routes.draw do
  root 'transactions#index'
  resources :transactions
  resources :categories
end
