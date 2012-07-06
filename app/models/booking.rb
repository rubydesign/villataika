class Booking < ActiveRecord::Base
  attr_accessor :name, :email , :room , :arriving , :leaving , :phone , :comment
  
  validates :email , :email => true 
  validates_format_of :name, :with => /\w{3,6} \w{3,6}/
  validates_format_of :phone, :with => /[+]?\d{3}[\d| |-]*$/
  validates_presence_of :arrival 
  validates_presence_of :room 
  validates_presence_of :leaving 
  
  def initialize has = {}
    return unless has
    [:name, :email , :room , :arriing , :leaving , :phone , :comment].each do |att|
      val = has[att]
      eval "self.#{att} = val"
    end
  end
end
