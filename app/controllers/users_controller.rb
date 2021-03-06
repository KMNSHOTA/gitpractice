class UsersController < ApplicationController
  #skip_before_action :require_login, only: [:index, :new, :create]

  # GET /users
  # GET /users.json

  # GET /users/1
  # GET /users/1.json

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
      if @user.save
        redirect_to login_path
        #format.html { redirect_to @user, notice: 'User was successfully created.' }
        #format.json { render :show, status: :created, location: @user }
      else
        render :new
      end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  #def update
   #respond_to do |format|
      #if @user.update(user_params)
        #format.html { redirect_to @user, notice: 'User was successfully updated.' }
        #format.json { render :show, status: :ok, location: @user }
      #else
        #format.html { render :edit }
        #format.json { render json: @user.errors, status: :unprocessable_entity }
      #end
    #end
  #end

  # DELETE /users/1
  # DELETE /users/1.json


  #def destroy
   # @user.destroy
    #respond_to do |format|
      #format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      #format.json { head :no_content }
    #end
  #end

  #private
    # Use callbacks to share common setup or constraints between actions.
    #def set_user
      #@user = User.find(params[:id])
    #end

    # Never trust parameters from the scary internet, only allow the white list through.
    private

    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :last_name, :first_name)
    end
end
