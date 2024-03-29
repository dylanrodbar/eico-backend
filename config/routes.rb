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
    get 'nextgraduatesposts', to: 'posts#nextgraduatesposts'
    get 'nextschoolposts', to: 'posts#nextschoolposts'
    get 'recentposts', to: 'posts#recentposts'
    get 'usertypebyname', to: 'usertypes#getbyname'
    get 'ratingtypebyname', to: 'ratingtypes#getbyname'
    get 'calendarbymonthyeardistinct', to: 'calendars#getbymonthyeardistinct'
    get 'calendarbymonthyear', to: 'calendars#getbymonthyear'
    get 'calendarbydaymonthyear', to: 'calendars#getbydaymonthyear'
    get 'userschoolbyname', to: 'users#getschoolbyname'
    get 'usersgraduatebyname', to: 'users#getgraduatebyname'
    get 'postsschoolbyname', to: 'posts#getschoolpostbyname'
    get 'postsgraduatebyname', to: 'posts#getgraduatepostbyname'
    get 'projectsbyname', to: 'projects#getgraduatebyproject'
    get 'adminemails', to: 'users#getadminemails'
    get 'useremails', to: 'users#getuseremails'
    get 'ratingsbydate', to: 'ratings#getbydaymonthyear'
    get 'visitsbydate', to: 'visits#getbydaymonthyear'

    post 'authenticate', to: 'authentication#authenticate'


  end

end
