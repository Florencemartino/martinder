class Match < ApplicationRecord
  belongs_to :user

  def match
  end

  def approve
  end

  def decline
  end
end
