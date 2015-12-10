class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :locale


  def locale
    @page =  params[:page] || "index"
    @locale = params[:locale]
    @locales = [ "en" , "fi" , "de"]
    I18n.locale = @locale
  end

end
