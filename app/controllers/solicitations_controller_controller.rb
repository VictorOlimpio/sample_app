class SolicitationsControllerController < ApplicationController
  def create
    @user = User.find(parms[:id])
  end

  def destroy

  end
end
