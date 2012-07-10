class Booking < ActiveRecord::Base
  belongs_to :room
  attr_accessor :name, :email , :room , :arriving , :leaving , :phone , :comment
  attr_accessible :name , :arriving , :leaving, :street , :phone , :town, :email 
  validates :email , :email => true 
  validates_format_of :name, :with => /\w{3,6} \w{3,6}/
  validates_format_of :phone, :with => /[+]?\d{3}[\d| |-]*$/
  validates_presence_of :arriving 
  validates_presence_of :room 
  validates_presence_of :leaving 
  
  def initialize has = {}
    super(has)
    @arriving = Date.today unless @arriving
    @leaving = Date.today + 1.day unless @leaving    
  end
  
  def initialize_old has = {}
    return unless has
    [:name, :email , :room , :arriving , :leaving , :phone , :comment].each do |att|
      val = has[att]
      eval "self.#{att} = val"
    end
  end
end
