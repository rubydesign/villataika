class Booking
  include ActiveModel::Model
  include ActiveModel::Validations

  attr_accessor  :email ,:arriving, :name, :comment,  :phone, :nights, :room

  validates :email , :email => true
  validates_format_of :name, :with => /\w{3,6} \w{3,6}/
  validates :phone,:presence => true,
                   :numericality => true,
                   :length => { :minimum => 8, :maximum => 15 }
  validates_presence_of :arriving
  validates :room, :presence => true
  validates_presence_of :nights

  def initialize(hash)
    super
    @arriving = Date.today + 1 unless @arriving
  end

end
