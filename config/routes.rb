Whatwizard::Application.routes.draw do
  post "football/wizard"
  post "home/wizard"
  # post "home/wizard_new"
  root to: 'rails_admin/main#dashboard'
  mount RailsAdmin::Engine => '/admin'
  devise_for :users
end
