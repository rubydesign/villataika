class Booking < ActiveRecord::Base
  belongs_to :room

    validates :email , :email => true
  validates_format_of :name, :with => /\w{3,6} \w{3,6}/
  validates :phone,:presence => true,
                   :numericality => true,
                   :length => { :minimum => 10, :maximum => 15 }
  validates_presence_of :arriving
  validates :room, :presence => true, :associated => true
  validates_presence_of :nights

  def initialize
    super
    @arriving = Date.today + 1 unless @arriving
  end

end
