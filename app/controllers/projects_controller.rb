class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  # GET /projects
  # GET /projects.json
  def index

    if is_user_logged_in?
      @myprojects = Project.all.where(User_id: current_user.id)
    end
    @projects = Project.all
    flash.delete(:notice)
    @promises = Promise.where(Project_id: session[:current_project_id])
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    @promises = Promise.where(Project_id: session[:current_project_id])
  end

  # GET /projects/new
  def new
    @project = Project.new
    @project.User_id = current_user.id
    @project.state = "waiting"
    @image = Image.new
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)
    @project.User_id = current_user.id
    @project.state = "waiting"


    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Your project was successfully created.' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:User_id, :name, :description, :goal, :money_colected, :expiration_date, :state, :start_date)
    end




end
