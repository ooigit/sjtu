class SessionsController < ApplicationController
  def new
    if signed_in?
		redirect_to root_path, :notice => "You have already signed in!"
	end
  end

  def create
    user = User.find_by_email(params[:email])
	if !user 
	  flash.now.alert = "Email not exist"
	  render "new"
	elsif !user.authenticate(params[:password])
	  flash.now.alert = "Invalid password"
	  render "new"
	else
	  sign_in user
	  redirect_to root_url, :notice => "Signed in!"
	end
  end

  def destroy
    sign_out
	redirect_to root_url, :notice => "Signed out!"
  end
end
