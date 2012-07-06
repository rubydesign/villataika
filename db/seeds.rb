# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
Room.create([
  {:name => "lootus" , :extra_beds => 4 , :has_shower => true , :has_toilet => true , :price => 95 },
  {:name => "safon" , :extra_beds => 2 , :has_shower => true , :has_toilet => true , :price => 90 },
  {:name => "aurinko" , :extra_beds => 2 , :has_shower => true , :has_toilet => true , :price => 90 },
  {:name => "vihrea" , :extra_beds => 1 , :has_shower => false , :has_toilet => true , :price => 75 },
  {:name => "oranssi" , :extra_beds => 1 , :has_shower => false , :has_toilet => true , :price => 75 },
  {:name => "ruusu" , :extra_beds => 1 , :has_shower => false , :has_toilet => false , :price => 75 },
  {:name => "taivas" , :extra_beds => 1 , :has_shower => false , :has_toilet => false , :price => 75 },
  {:name => "hirsi" , :extra_beds => 0 , :has_shower => false , :has_toilet => false , :price => 70 }
  ])