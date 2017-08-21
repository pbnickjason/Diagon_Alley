class StandardsController < ApplicationController
  before_filter :page_restrict

    def new
        @Standard = Standard.new
    end
    
    def index
        @Standards = Standard.all
    end
    
    def create
        @Standard = Standard.new(params[:standard])
        if @Standard.save
            redirect_to @Standard
        else
            render "new"
        end
    end
    
    private
    def standard_params
        params.require(:standard).permit(:name, :description, children_attributes: [:name, :description, :children_attributes])
    end
end
