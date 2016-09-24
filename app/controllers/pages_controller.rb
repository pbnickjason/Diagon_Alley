class PagesController < ApplicationController
  def index
      @subjects = Subject.all
  end
    
  def about
      
  end
end
