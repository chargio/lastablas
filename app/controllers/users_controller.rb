class UsersController < ApplicationController
  def show
  @user = if current_user.admin?
      User.find(params[id])
    else
      User.find(current_user.id)
    end
  end
end
