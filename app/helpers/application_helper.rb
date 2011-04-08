module ApplicationHelper  
  def this_page
     "/" +  params["page"] + ".html"
  end
end
