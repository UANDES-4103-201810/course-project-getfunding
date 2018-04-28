class DescriptivePagesController < ApplicationController
  before_action :set_descriptive_page, only: [:show, :edit, :update, :destroy]

  # GET /descriptive_pages
  # GET /descriptive_pages.json
  def index
    @descriptive_pages = DescriptivePage.all
  end

  # GET /descriptive_pages/1
  # GET /descriptive_pages/1.json
  def show
  end

  # GET /descriptive_pages/new
  def new
    @descriptive_page = DescriptivePage.new
  end

  # GET /descriptive_pages/1/edit
  def edit
  end

  # POST /descriptive_pages
  # POST /descriptive_pages.json
  def create
    @descriptive_page = DescriptivePage.new(descriptive_page_params)

    respond_to do |format|
      if @descriptive_page.save
        format.html { redirect_to @descriptive_page, notice: 'Descriptive page was successfully created.' }
        format.json { render :show, status: :created, location: @descriptive_page }
      else
        format.html { render :new }
        format.json { render json: @descriptive_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /descriptive_pages/1
  # PATCH/PUT /descriptive_pages/1.json
  def update
    respond_to do |format|
      if @descriptive_page.update(descriptive_page_params)
        format.html { redirect_to @descriptive_page, notice: 'Descriptive page was successfully updated.' }
        format.json { render :show, status: :ok, location: @descriptive_page }
      else
        format.html { render :edit }
        format.json { render json: @descriptive_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /descriptive_pages/1
  # DELETE /descriptive_pages/1.json
  def destroy
    @descriptive_page.destroy
    respond_to do |format|
      format.html { redirect_to descriptive_pages_url, notice: 'Descriptive page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_descriptive_page
      @descriptive_page = DescriptivePage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def descriptive_page_params
      params.require(:descriptive_page).permit(:Project_id, :link)
    end
end
