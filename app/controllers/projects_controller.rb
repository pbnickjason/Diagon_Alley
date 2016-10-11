class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  # GET /projects
  # GET /projects.json
  def index
    all_projects = Project.all
    if params[:search]
      all_projects = Project.search(params[:search])
    end
    @projects = Array.new
    begin
        @subject = Subject.find(params[:subject])
        all_projects.each do |project|
            if project.tags.include?(@subject.name)
                @projects << project
            end 
        end
    rescue ActiveRecord::RecordNotFound
        if params[:subject].nil?
            @projects = all_projects
        else
            not_found
        end
        #@projects = all_projects #if subject isn't found somehow, or if 'projects' is clicked
    end
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
  end

  # GET /projects/new
  def new
    @project = Project.new
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects
  # POST /projects.json
  def create
    time = Time.new
    hash = rand(65535).to_s(16)
    objKey = "project_images/" + hash.to_s + "-" + time.year.to_s + "-" + time.month.to_s + "-" + time.day.to_s + "-" + time.hour.to_s + "-" + time.min.to_s + ".jpg"
      obj = PROJECT_IMAGES.object(objKey)
      #obj.upload_file(:file)
      #File.open(:file, 'rb') do |file|
      uploaded_io = params[:project][:picture]
      File.open(uploaded_io.path, 'rb') do |file|
        obj.put(body: file)
      end
    
    
    @project = Project.new(project_params)
    @project.image = 'https://s3-us-west-2.amazonaws.com/diagon-alley-devel-storage/' + objKey
    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        # format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        # format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        # format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        # format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
      # format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
        begin
            @project = Project.find(params[:id])
        rescue ActiveRecord::RecordNotFound
            handle_400
        end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:title, :description, :contents, :price, :summary, :instructions)
    end
    
    def not_found
        render :file => "#{Rails.root}/public/404.html",  :status => 404
    end
    
end
