class SessionsController < ApplicationController
  def new
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
	  session[:user_id] = user.id
	  redirect_to root_url, :notice => "Logged in!"
	end
  end

  def destroy
    session[:user_id] = nil
	redirect_to root_url, :notice => "Logged out!"
  end
end
