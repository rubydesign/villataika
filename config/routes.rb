Villataika::Application.routes.draw do 

  resources :bookings

  root :controller => "page", :action => "index" , :locale => "fi"

  get "/:locale/booking.html" ,     :to => 'booking#booking' 
  post "/:locale/booking.html" ,     :to => 'booking#booking'  
  get "/:locale/confirm.html" ,     :to => 'booking#confirm'  

  get '/(:locale)/:page.html',
        :to => 'page#index',
        :constraints => {
          :locale => /[a-z]{2}/,
        },
        :defaults => {
          :page => "index",
          :locale => 'fi'
        }
        
end
