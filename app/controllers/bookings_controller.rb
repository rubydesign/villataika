class BookingsController < ApplicationController


  def booking
    if request.post?
      @booking = Booking.new(params_for_model)
      puts "room is #{@booking.room}"
      if @booking.valid?
        BookingMailer.confirm(@booking).deliver
        render :confirm
        return
      else
        flash.now[:errors] = @booking.errors
      end
    end
  end

  def confirm

  end

  def params_for_model
    params.require(:booking).permit(:arriving, :nights, :email, :phone, :comment, :room ,:name)
  end
end
