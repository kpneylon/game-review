class GameReview < ApplicationController
  belongs_to :game
  belongs_to :user

end