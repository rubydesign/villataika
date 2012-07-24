Villataika::Application.routes.draw do 

  root :controller => "page", :action => "index" , :locale => "fi"

  scope "/:locale" do 
    namespace :villa do
      resources :bookings      
    end

    get "/bookings/rooms_day.html" ,     :to => 'bookings#rooms_day' 

    get "/booking.html" ,     :to => 'bookings#booking' 
    post "/booking.html" ,     :to => 'bookings#booking'  
    get "/confirm.html" ,     :to => 'bookings#confirm'  

    get '/:page.html',
        :to => 'page#index',
        :constraints => {
          :locale => /[a-z]{2}/,
        },
        :defaults => {
          :page => "index",
          :locale => 'fi'
        }
      end
        
end
