class PageController < ApplicationController
  before_filter :locale
  
  def index
    @template =  params[:page] 
    response.headers['Content-type'] = 'text/html; charset=utf-8'
    render :template => @template
  end

  def locale
    @locale = params[:locale] 
    @locales = [ "en" , "fi"]
    I18n.locale = @locale
  end

end
