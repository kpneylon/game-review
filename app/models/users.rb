class User < ActiveRecord::Base
    has_secure_password
    has_many :game_reviews
    has_many :games, through: :game_reviews
    validates :username, uniqueness: true

  def slug
    username.downcase.split.join("-")
  end

  def self.find_by_slug(slug)
    self.all.detect {|s| s.slug == slug}
  end

end