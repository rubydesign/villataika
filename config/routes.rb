Rails.application.routes.draw do

  root :controller => "page", :action => "index" , :locale => "fi"


  get '/en/kartta.html',   to: redirect("/en/map.html")
  get '/fi/kartta.html',   to: redirect("/fi/map.html")
  get '/de/kartta.html',   to: redirect("/de/map.html")

  scope "/:locale" do

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
