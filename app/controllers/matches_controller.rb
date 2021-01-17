class MatchesController < ApplicationController

  def index
    @users = User.all
    @users = @users.where.not(id: current_user.id)
  end
end
