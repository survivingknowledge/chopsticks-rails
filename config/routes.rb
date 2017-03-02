Rails.application.routes.draw do
  resources :foods
  root 'welcome#home'
end
