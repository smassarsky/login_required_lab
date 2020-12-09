class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name] && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to sessions_show_path
    else
      redirect_to new_session_path, alert: "Username cannot be empty."
    end
  end

  def show
    @name = current_user
  end

  def destroy
    session[:name] = nil
    redirect_to new_session_path
  end

end