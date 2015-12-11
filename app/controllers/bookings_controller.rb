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
    @days = params[:days] ? params[:days].to_i : 1
    @page = "booking"
    if request.post?
      @booking = Booking.new
      @booking.update_attributes(params_for_model)
      if @booking.valid?
        BookingMailer.confirm(@booking).deliver
        redirect_to :action => :confirm
        return
      else
        flash.now[:errors] = @booking.errors
      end
    end
    @booking ||= Booking.new
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
    params.require(:booking).permit(:arriving, :nights, :email, :phone, :comment, :room)
  end

end
