class BookingMailer < ActionMailer::Base
  default :to => "info@villataika.fi"

  def confirm(booking)
    @booking  = booking
    mail( :from => booking.email,  :subject => "#{t('booking.short')} #{booking.arriving}")
  end
end
