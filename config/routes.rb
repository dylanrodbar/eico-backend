Rails.application.routes.draw do
  namespace 'api' do
    resources :sites
  end

end