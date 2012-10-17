class SessionsController < ApplicationController
  skip_before_filter :check_authentication
  def new
    
  end
  def create
    session[:user_id] = User.authenticate(params[:username], params[:password]).id
    flash[notice] = "Welcome back"
    redirect_to :action => session[:intented_action], :controller => session[:intended_controller]
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice => "Come back soon"
  end
end
