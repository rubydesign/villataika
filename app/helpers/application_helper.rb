module ApplicationHelper  
  def this_page
    page = params["page"] || "index"
     "/#{page}.html"
  end
  
  def photos
    Dir.glob("#{Rails.root}/public/photos/*.jpg").collect {|p| File.basename(p , ".jpg")}
  end
end
