class PagesController < ApplicationController
  def index
      @subjects = Subject.all
  end
end
