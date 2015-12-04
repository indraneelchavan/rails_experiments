class SessionsController < ApplicationController

  include SessionsHelper
	
  def new
  end

  def create
  	
  	user = User.find_by(email: params[:session][:email].downcase)
  	if user && user.authenticate(params[:session][:password])
  		log_in user
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
  		redirect_to previous_path
  	else
  		flash.now[:danger] = 'Invail email/password combination'
  		render 'new'
  	end
  end

  

  def log_in(user)
		session[:user_id] = user.id
  end

 

  def destroy
  	log_out if logged_in?
  	redirect_to root_url
  end

  

  

 

  
end
