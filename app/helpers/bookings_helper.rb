module BookingsHelper

  def days
    days = (0..9).collect{ |u| start + u.days}
  end
  
  def start
    if(params[:start])
      start = Date.parse(params[:start])
    else
      start = Date.today
    end    
  end
  
    def rooms
      Room.all.collect{|r| r.name }
    end

    def room_rand
      @on = rand < 0.5 
    end
    def room_free(room,day)
      @on
    end
    def div(room,day)
      func = "$('#booking_room').attr('value','#{room}');" 
      func += "$('#room').text('#{room}');" 
      func += "$('#booking_arriving').attr('value','#{day}');" 
      func += "$('#arriving').text('#{day}');" 
      func = "onclick=#{func}"
      clas = room_rand ? "free" : "booked"
      div = "<div class='#{}'"  
      div += func if @on
      div + ">"
    end
end
