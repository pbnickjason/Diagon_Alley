class WorkspaceController < ApplicationController
  before_filter :page_restrict
    def index
        @project = Project.find(params[:id])
    end
end
