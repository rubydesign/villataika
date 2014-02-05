class Room < ActiveRecord::Base
  has_many :booking
  attr_accessible :name, :price, :extra_beds, :has_shower, :has_toilet
end
