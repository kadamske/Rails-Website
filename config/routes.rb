Rails.application.routes.draw do
  devise_scope :user do
    root to: "devise/sessions#new"
  end
  devise_for :users, :controllers => { registrations: 'users/registrations' },
  path: "",
  path_names: {
    "sign_in": "login",
    "sign_up": "register"
  }
  devise_scope :user do
    get 'welcome', to: 'home#welcome'
  end
  devise_scope :user do
    get 'hunts', to: 'home#hunts'
  end
  get 'home/index'
  # root to: "home#index"
end