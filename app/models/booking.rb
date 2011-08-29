class Booking
  include ActiveModel::Validations
  attr_accessor :name, :email , :room , :arrival , :nights , :phone , :comment
  
  validates :email , :email => true 
  validates_format_of :name, :with => /\w{3,6} \w{3,6}/
  validates_format_of :phone, :with => /[+]?\d{3}[\d| |-]*$/
  validates_presence_of :arrival 
  validates_presence_of :room 
  validates_presence_of :nights 
  
  def initialize has = {}
    return unless has
    [:name, :email , :room , :arrival , :nights , :phone , :comment].each do |att|
      val = has[att]
      eval "self.#{att} = val"
    end
  end
end
