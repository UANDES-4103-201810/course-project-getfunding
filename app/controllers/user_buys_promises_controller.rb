class UserBuysPromisesController < ApplicationController
  before_action :set_user_buys_promise, only: [:show, :edit, :update, :destroy]

  # GET /user_buys_promises
  # GET /user_buys_promises.json
  def index
    @user_buys_promises = UserBuysPromise.all
    @promise = Promise.where(id: session[:promise])
  end

  # GET /user_buys_promises/1
  # GET /user_buys_promises/1.json
  def show
  end

  # GET /user_buys_promises/new
  def new
    @user_buys_promise = UserBuysPromise.new
    @user_buys_promise.User_id = current_user.id
    @promise = Promise.find_by(id: session[:promise])
    @project = Project.find_by(id: session[:current_project_id])
  end

  # GET /user_buys_promises/1/edit
  def edit
  end

  # POST /user_buys_promises
  # POST /user_buys_promises.json
  def create
    @user_buys_promise = UserBuysPromise.new#(user_buys_promise_params)
    @user_buys_promise.User_id = current_user.id
    @promise = Promise.find_by(id: session[:promise])
    @user_buys_promise.Promise_id = session[:promise]
    @project = Project.find_by(id: session[:current_project_id])
    money = session[:money] + session[:promise_value].to_i
    Project.update(session[:current_project_id], :money_colected => money)


    respond_to do |format|
      if @user_buys_promise.save
        format.html { redirect_to @user_buys_promise, notice: 'Transaction confirmed.' }
        format.json { render :show, status: :created, location: @user_buys_promise }
      else
        format.html { render :new }
        format.json { render json: @user_buys_promise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_buys_promises/1
  # PATCH/PUT /user_buys_promises/1.json
  def update
    respond_to do |format|
      if @user_buys_promise.update(user_buys_promise_params)
        format.html { redirect_to @user_buys_promise, notice: 'User buys promise was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_buys_promise }
      else
        format.html { render :edit }
        format.json { render json: @user_buys_promise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_buys_promises/1
  # DELETE /user_buys_promises/1.json
  def destroy
    @user_buys_promise.destroy
    respond_to do |format|
      format.html { redirect_to user_buys_promises_url, notice: 'User buys promise was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_buys_promise
      @user_buys_promise = UserBuysPromise.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_buys_promise_params
      params.require(:user_buys_promise).permit(:User_id, :Promise_id)
    end
end
