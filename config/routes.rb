Rails.application.routes.draw do
  namespace 'api' do
    resources :sites
    resources :users
    resources :usertypes
  end

end
