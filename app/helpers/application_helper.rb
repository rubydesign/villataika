module ApplicationHelper
  def rooms
    ["lootus" , "aurinko" , "ametisti" ,"ruusu" , "vihrea", "oranssi" ,"taivas"  ]
  end
  def suites
    @rooms = ["lootus" , "aurinko"  ]
  end
  
  def this_page
    room =  params["dir"] ? params["dir"] +"/" : ""
     "/" + room +  params["page"] + ".html"
  end
end
