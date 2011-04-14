module ApplicationHelper  
  def this_page
    page = params["page"] || "index"
     "/#{page}.html"
  end
  
  def photos
    dir "photos"
  end
  
  def activities
    dir "activities"
  end

  def dir name
    Dir.glob("#{Rails.root}/public/#{name}/*.jpg").collect {|p| File.basename(p , ".jpg")}
  end
end
