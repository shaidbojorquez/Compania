Rails.application.routes.draw do
  get 'welcome/index'
  get 'welcome/about'
  get 'welcome/contact'
  get 'welcome/faq'
  get 'welcome/pricing'
  get 'welcome/features'
  resources :invoices
  resources :companies do
    collection {post :import}
  end

  root to: 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
