class Booking < ActiveRecord::Base
  belongs_to :room
  attr_accessor :name, :email , :room , :arriving , :leaving , :phone , :comment
  #attr_accessible :name , :arriving , :leaving, :street , :phone , :town, :email , :room , :comment , :nights
  validates :email , :email => true
  validates_format_of :name, :with => /\w{3,6} \w{3,6}/
  validates :phone,:presence => true,
                   :numericality => true,
                   :length => { :minimum => 10, :maximum => 15 }
  validates_presence_of :arriving
  validates_presence_of :room
  validates_presence_of :leaving

  def initialize
    super
    @arriving = Date.today + 1 unless @arriving
  end

  def update_attributes has = {}
    nights = has.delete "nights"
    super(has)
    if nights.blank?
      self.leaving = self.arriving + 1 unless @leaving
    else
      self.leaving = Date.parse(self.arriving) + nights.to_i
    end
  end

end
