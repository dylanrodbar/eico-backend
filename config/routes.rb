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
    get 'recentposts', to: 'posts#recentposts'
    get 'usertypebyname', to: 'usertypes#getbyname'
    get 'ratingtypebyname', to: 'ratingtypes#getbyname'
    get 'calendarbymonthyeardistinct', to: 'calendars#getbymonthyeardistinct'
    get 'calendarbymonthyear', to: 'calendars#getbymonthyear'
    get 'calendarbydaymonthyear', to: 'calendars#getbydaymonthyear'


  end

end
