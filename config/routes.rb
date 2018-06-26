Rails.application.routes.draw do
  namespace 'api' do
    resources :sites
    resources :users
    resources :usertypes
    resources :services
    resources :calendars
    resources :comments
    resources :educations
    resources :posts
    resources :projects
    resources :ratings
    resources :ratingtypes
    resources :visits
  end

end
