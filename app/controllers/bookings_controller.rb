class BookingsController < ApplicationController
  before_filter :get_bookings , :only => [:rooms_day , :booking]

  # GET /bookings
  def index
    if( request.method == "POST")
      redirct :action => "confirm"
    else
      @bookings = Booking.all
    end
  end

  # GET /bookings/1
  def show
    @booking = Booking.find(params[:id])
  end

  def booking
    @booking = Booking.new
    if request.post?
      @booking.update_attributes(params_for_model)
      puts "room #{@booking.room_id}"
      if @booking.save
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
  # GET /bookings/new
  def new
    @booking = Booking.new
  end

  def rooms_day
    render "rooms_day" , :layout => false
  end

  # GET /bookings/1/edit
  def edit
    @booking = Booking.find(params[:id])
  end

  # POST /bookings
  def create
    @booking = Booking.new(params[:booking])
    if @booking.save
      redirect_to(@booking, :notice => 'Booking was successfully created.')
    else
      render :action => "new"
    end
  end

  # PUT /bookings/1
  def update
    @booking = Booking.find(params[:id])

    if @booking.update_attributes(params[:booking])
      redirect_to(@booking, :notice => 'Booking was successfully updated.')
    else
      render :action => "edit"
    end
  end

  # DELETE /bookings/1
  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to(bookings_url)
  end

  private
  def get_bookings
    arriving = params[:arriving] ? Date.parse(params[:arriving]) : Date.today
    @bookings = {}
    @rooms = Room.all
  end
  def params_for_model
    params.require(:booking).permit(:arriving, :nights, :email, :phone, :comment, :room_id ,:name)
  end

end
