class UsersController < ApplicationController
  
  def show
  	@user = User.find(params[:id])
  end

  def new
  	@user = User.new
  end

  def create
  	# the (params[:user]) accepts a hash of all user info
  	# for example, user_email, user_name, user_password, etc...
  	@user = User.new(params[:user])
  	if @user.save
      flash[:success] = "Welcome to the Sample App!"
  		# Handle a successful save a redirect to profile page
  		redirect_to @user
  	else
  		render 'new'
  	end
  end
end
