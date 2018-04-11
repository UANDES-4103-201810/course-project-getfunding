class UserFundsProyectsController < ApplicationController
  before_action :set_user_funds_proyect, only: [:show, :edit, :update, :destroy]

  # GET /user_funds_proyects
  # GET /user_funds_proyects.json
  def index
    @user_funds_proyects = UserFundsProyect.all
  end

  # GET /user_funds_proyects/1
  # GET /user_funds_proyects/1.json
  def show
  end

  # GET /user_funds_proyects/new
  def new
    @user_funds_proyect = UserFundsProyect.new
  end

  # GET /user_funds_proyects/1/edit
  def edit
  end

  # POST /user_funds_proyects
  # POST /user_funds_proyects.json
  def create
    @user_funds_proyect = UserFundsProyect.new(user_funds_proyect_params)

    respond_to do |format|
      if @user_funds_proyect.save
        format.html { redirect_to @user_funds_proyect, notice: 'User funds proyect was successfully created.' }
        format.json { render :show, status: :created, location: @user_funds_proyect }
      else
        format.html { render :new }
        format.json { render json: @user_funds_proyect.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_funds_proyects/1
  # PATCH/PUT /user_funds_proyects/1.json
  def update
    respond_to do |format|
      if @user_funds_proyect.update(user_funds_proyect_params)
        format.html { redirect_to @user_funds_proyect, notice: 'User funds proyect was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_funds_proyect }
      else
        format.html { render :edit }
        format.json { render json: @user_funds_proyect.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_funds_proyects/1
  # DELETE /user_funds_proyects/1.json
  def destroy
    @user_funds_proyect.destroy
    respond_to do |format|
      format.html { redirect_to user_funds_proyects_url, notice: 'User funds proyect was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_funds_proyect
      @user_funds_proyect = UserFundsProyect.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_funds_proyect_params
      params.require(:user_funds_proyect).permit(:User_id, :Proyect_id, :value)
    end
end
