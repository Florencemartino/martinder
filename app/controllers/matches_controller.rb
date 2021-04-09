class MatchesController < ApplicationController

  def index
    @users = User.where.not(id: current_user.id)
    @users = @users.where(sex: current_user.sex_preference, sex_preference: current_user.sex)
  end

  def matches
   @matches = current_user.matches

  end

  def approve
    user_id = params[:id]

    new_like = Like.new(liked_user_id: params[:id])
    new_like.user_id = current_user.id

    if new_like.save
      existing_like = Like.where(user_id: user_id, liked_user_id: current_user.id).count
      @they_like_us = existing_like > 0
    else 
      #TBD
    end
  end

  def decline
  end

end
