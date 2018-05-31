class HomeController < ApplicationController
  def index
  end

  def callback
	  response = Instagram.get_access_token(params[:code], redirect_uri: ENV['REDIRECT_URI'])
	  @user = User.find_or_create_user(response)
	  session[:user_id] = @user.id
	  redirect_to :me
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to root_path
  end

end