class AccountActivationsController < ApplicationController
  def edit
    user = User.find_by(email: params[:email])
    if user_check user
      user.activate
      log_in user
      flash[:success] = 'Account activated!'
      redirect_to user
    else
      flash[:danger] = 'Invalid activation link'
      redirect_to root_url
    end
  end

  def user_check(user)
    return true if !user&.activated? &&
        user&.authenticated?(:activation, params[:id])
  end
end
