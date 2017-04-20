class PagesController < ApplicationController
  def index
      @subjects = Subject.all
      @panel = Panel.new(S3.object("front_page/panel.xml").get().body.read)
  end
    
  def about
      
  end
end
