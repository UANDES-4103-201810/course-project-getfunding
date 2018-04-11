class AdminAdministrateProyectsController < ApplicationController
  before_action :set_admin_administrate_proyect, only: [:show, :edit, :update, :destroy]

  # GET /admin_administrate_proyects
  # GET /admin_administrate_proyects.json
  def index
    @admin_administrate_proyects = AdminAdministrateProyect.all
  end

  # GET /admin_administrate_proyects/1
  # GET /admin_administrate_proyects/1.json
  def show
  end

  # GET /admin_administrate_proyects/new
  def new
    @admin_administrate_proyect = AdminAdministrateProyect.new
  end

  # GET /admin_administrate_proyects/1/edit
  def edit
  end

  # POST /admin_administrate_proyects
  # POST /admin_administrate_proyects.json
  def create
    @admin_administrate_proyect = AdminAdministrateProyect.new(admin_administrate_proyect_params)

    respond_to do |format|
      if @admin_administrate_proyect.save
        format.html { redirect_to @admin_administrate_proyect, notice: 'Admin administrate proyect was successfully created.' }
        format.json { render :show, status: :created, location: @admin_administrate_proyect }
      else
        format.html { render :new }
        format.json { render json: @admin_administrate_proyect.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin_administrate_proyects/1
  # PATCH/PUT /admin_administrate_proyects/1.json
  def update
    respond_to do |format|
      if @admin_administrate_proyect.update(admin_administrate_proyect_params)
        format.html { redirect_to @admin_administrate_proyect, notice: 'Admin administrate proyect was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_administrate_proyect }
      else
        format.html { render :edit }
        format.json { render json: @admin_administrate_proyect.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin_administrate_proyects/1
  # DELETE /admin_administrate_proyects/1.json
  def destroy
    @admin_administrate_proyect.destroy
    respond_to do |format|
      format.html { redirect_to admin_administrate_proyects_url, notice: 'Admin administrate proyect was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_administrate_proyect
      @admin_administrate_proyect = AdminAdministrateProyect.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_administrate_proyect_params
      params.require(:admin_administrate_proyect).permit(:Admin_id, :Proyect_id)
    end
end
