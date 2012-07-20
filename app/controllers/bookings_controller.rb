class BookingsController < ApplicationController
  before_filter :get_bookings , :only => [:rooms , :booking]
  
  # GET /bookings
  def index
    @bookings = Booking.all
  end

  # GET /bookings/1
  def show
    @booking = Booking.find(params[:id])
  end

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

  def rooms
    render :partial => "rooms" , :layout => false
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
    Room.all.each do |room|
      @bookings[room.name] = (rand * 5).to_i
    end
    
  end
end
