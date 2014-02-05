# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
Room.create([
  {:name => "lootus" , :extra_beds => 4 , :has_shower => true , :has_toilet => true , :price => 110 },
  {:name => "saffron" , :extra_beds => 2 , :has_shower => true , :has_toilet => true , :price => 95 },
  {:name => "aurinko" , :extra_beds => 2 , :has_shower => true , :has_toilet => true , :price => 95 },
  {:name => "vihrea" , :extra_beds => 1 , :has_shower => false , :has_toilet => true , :price => 80 },
  {:name => "oranssi" , :extra_beds => 1 , :has_shower => false , :has_toilet => true , :price => 80 },
  {:name => "ruusu" , :extra_beds => 1 , :has_shower => false , :has_toilet => false , :price => 80 },
  {:name => "taivas" , :extra_beds => 1 , :has_shower => false , :has_toilet => false , :price => 80 },
  {:name => "hirsi" , :extra_beds => 0 , :has_shower => false , :has_toilet => false , :price => 70 }
  ])