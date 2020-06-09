class Game < ActiveRecord::Base
    has_many :game_reviews
    has_many :users, through: :game_reviews
end