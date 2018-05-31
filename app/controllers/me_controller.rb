class MeController < ApplicationController
	before_action :authenticate
  def show
  	@client = Instagram.client(:access_token => current_user.access_token)
  	@user = @client.user
  end
end
