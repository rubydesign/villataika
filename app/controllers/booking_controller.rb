class BookingController < ApplicationController
  
  
  def booking
    @page = "booking"
    if request.post?
      @booking = Booking.new params[:booking] 
      if @booking.valid?
        redirect_to :action => :confirm 
        BookingMailer.confirm(@booking).deliver
        return 
      else
        flash.now[:errors] = @booking.errors
        puts @booking.errors
      end
    end
    @booking ||= Booking.new 
    puts "name " + @booking.name.to_s
  end

  def confirm
    
  end
  

end
