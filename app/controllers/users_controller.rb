class UsersController < ApplicationController
  def show
    @acts = Act.where(user_id: current_user.id)
  end
end
