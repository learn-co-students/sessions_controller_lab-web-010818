class SessionsController < ApplicationController

  def new
  end

  def create
    @user = params[:name]
    if @user == nil || @user == ""
      redirect_to login_path
    else
      session[:name] = @user
      redirect_to '/'
    end
  end



  def destroy
    if session[:name] == nil
      redirect_to login_path
    else
      session.delete :name
      redirect_to login_path
    end
  end

end
