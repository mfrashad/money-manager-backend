class SessionsController < ApplicationController
  def new
  end
  def create
    user = User.find_by_email(params[:email])
    if user && user.login(params[:password])
      session[:user_id] = user.id
      if params[:json]
        render json: user
      else
        redirect_to root_url, notice: "Logged in!"
      end
    else
      if params[:json]
        render json: {"authentication":false, "error": "Email or password is invalid"} 
      else
        flash.now[:alert] = "Email or password is invalid"
        render "new"
      end
    end
  end
  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end
end