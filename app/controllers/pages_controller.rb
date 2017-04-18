class PagesController < ApplicationController
  def index
      @subjects = Subject.all
      doc = Nokogiri::XML(S3.object("front_page/panel.xml").get().body.read)
      @title = doc.xpath("panel/title").text
      @image = doc.xpath("panel/image").text
  end
    
  def about
      
  end
end
