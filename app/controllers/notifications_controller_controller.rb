class NotificationsControllerController < ApplicationController
  before_action :logged_in_user

  def create
    @user = User.find(params[:follower_id])
  end

  def destroy; end
end
