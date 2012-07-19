class BookingsController < ApplicationController

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

  def confirm
    
  end
  # GET /bookings/new
  def new
    @booking = Booking.new
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
end
