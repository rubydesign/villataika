class Booking < ActiveRecord::Base
  belongs_to :room
  attr_accessor :name, :email , :room , :arriving , :leaving , :phone , :comment
  attr_accessible :name , :arriving , :leaving, :street , :phone , :town, :email , :room , :comment , :nights
  validates :email , :email => true 
  validates_format_of :name, :with => /\w{3,6} \w{3,6}/
  validates_format_of :phone, :with => /[+]?\d{3}[\d| |-]*$/
  validates_presence_of :arriving 
  validates_presence_of :room 
  validates_presence_of :leaving 
  
  def update_attributes has = {}
    nights = has.delete "nights"
    super(has)
    @arriving = Date.today unless @arriving
    if nights
      @leaving = @arriving + nights 
    else
      @leaving = Date.today + 1 unless @leaving    
    end
  end
  
  def initialize_old has = {}
    return unless has
    [:name, :email , :room , :arriving , :leaving , :phone , :comment].each do |att|
      val = has[att]
      eval "self.#{att} = val"
    end
  end
end
