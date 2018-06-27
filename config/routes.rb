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


    get 'schoolpostsall', to: 'posts#schoolpostsall'
    get 'graduatespostsall', to: 'posts#graduatespostsall'
    get 'schoolposts', to: 'posts#schoolposts'
    get 'graduatesposts', to: 'posts#graduatesposts'


  end

end
