require 'spec_helper'

describe PageController  do
  before :all do
    @pages = {}
  end

  def walks url , depth = ""
    puts depth + url.to_s
    return unless url
    return if url.include? "http"
    visit url
    page.all("a").each do |p|
      ref = p[:href]
      next if @pages.has_key? ref
      @pages[ref] = false
      walks ref , depth + "-"
    end
    visit url # reset capybara scope so relative links work
  end

  it "renders ok" do
    puts "Walking"
    walks "/"
  end

end
