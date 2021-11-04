require "constraints/subdomain_required"
Rails.application.routes.draw do

  constraints(SubdomainRequired) do
    scope module: "accounts" do
      root to: "posts#index", as: :account_root
      resources :posts
    end
  end

  resources :posts
  resources :accounts
  root "accounts#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
