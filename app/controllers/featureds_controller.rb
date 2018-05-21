class FeaturedsController < ApplicationController
  before_action :set_featured, only: [:show, :edit, :update, :destroy]

  # GET /featureds
  # GET /featureds.json
  def index
    @featureds = Featured.all
  end

  # GET /featureds/1
  # GET /featureds/1.json
  def show
  end

  # GET /featureds/new
  def new
    @featured = Featured.new
    @featured.Project_id = session[:current_project_id]
  end

  # GET /featureds/1/edit
  def edit
  end

  # POST /featureds
  # POST /featureds.json
  def create
    @featured = Featured.new(featured_params)
    @featured.Project_id = session[:current_project_id]
    respond_to do |format|
      if @featured.save
        format.html { redirect_to @featured, notice: 'The project was successfully selected as best of the week.' }
        format.json { render :show, status: :created, location: @featured }
      else
        format.html { render :new }
        format.json { render json: @featured.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /featureds/1
  # PATCH/PUT /featureds/1.json
  def update
    respond_to do |format|
      if @featured.update(featured_params)
        format.html { redirect_to @featured, notice: 'Featured was successfully updated.' }
        format.json { render :show, status: :ok, location: @featured }
      else
        format.html { render :edit }
        format.json { render json: @featured.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /featureds/1
  # DELETE /featureds/1.json
  def destroy
    @featured.destroy
    respond_to do |format|
      format.html { redirect_to featureds_url, notice: 'Featured was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_featured
      @featured = Featured.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def featured_params
      params.require(:featured).permit(:Project_id)
    end
end
