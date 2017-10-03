class SolicitationsController < ApplicationController
  before_action :logged_in_user

  def show
    @user = User.find(params[:id])
    @solicitations = @user.solicitations_to_accept
  end

  def create
    @user = User.find(params[:user_id])
    current_user.make_solicitation(@user)
    respond_to do |format|
      format.html { redirect_to @user }
      format.js
    end
  end

  def destroy
    @user = Solicitation.find(params[:id]).user
    current_user.cancel_solicitation(@user)
    respond_to do |format|
      format.html { redirect_to @user }
      format.js
    end
  end
end
