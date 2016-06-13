class BookingMailer < ActionMailer::Base

  def confirm(booking)
    @booking  = booking
    mail( :to => @booking.email ,:reply_to => @booking.email , :subject => "#{t('booking.short')} #{booking.arriving}")
  end
end
