class MatchesController < ApplicationController

  def index
    @users = User.where.not(id: current_user.id)

    @users = @users.where(sex: current_user.sex_preference, sex_preference: current_user.sex)
  end
end
