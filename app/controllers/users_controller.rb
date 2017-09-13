class UsersController < ApplicationController
  def show
    @user = User.where(id: params.permit(:id).to_h[:id]).first
    unless @user
      flash[:alert] = "User not found"
    end
  end
end
