module ApplicationHelper
  def rooms
    ["lootus" , "aurinko" , "ametisti" ,"ruusu" , "vihrea", "oranssi" ,"taivas"  ]
  end
  def suites
    @rooms = ["lootus" , "aurinko"  ]
  end
end
