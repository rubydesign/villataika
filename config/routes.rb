Villataika::Application.routes.draw do |map|

  root :controller => "page", :action => "index" , :locale => "fi"

  get '/(:locale)/:page.html',
        :to => 'page#index',
        :constraints => {
          :locale => /[a-z]{2}/,
        },
        :defaults => {
          :page => "index",
          :locale => 'fi'
        }
        
        get "/en/booking.php" ,     :to => 'page#index' , :page => "booking" , :locale => "en"
        get "/fi/booking.php" ,     :to => 'page#index' , :page => "booking" , :locale => "fi"
end
